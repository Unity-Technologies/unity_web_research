type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_ShadowMapTexture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> u_xlatb22 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat20 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : f32 = x_17.x_ProjectionParams.z;
  let x_28 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_23 / x_28);
  let x_33 : vec3<f32> = u_xlat0;
  let x_35 : vec3<f32> = vs_TEXCOORD1;
  u_xlat0 = (vec3<f32>(x_33.x, x_33.x, x_33.x) * x_35);
  let x_41 : vec4<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = vs_TEXCOORD0;
  let x_45 : vec2<f32> = (vec2<f32>(x_41.x, x_41.y) / vec2<f32>(x_43.w, x_43.w));
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_45.x, x_45.y, x_46.z);
  let x_59 : vec3<f32> = u_xlat1;
  let x_61 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_59.x, x_59.y));
  u_xlat30 = x_61.x;
  let x_65 : f32 = x_17.x_ZBufferParams.x;
  let x_66 : f32 = u_xlat30;
  let x_70 : f32 = x_17.x_ZBufferParams.y;
  u_xlat30 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat30;
  u_xlat30 = (1.0f / x_73);
  let x_77 : f32 = u_xlat30;
  let x_79 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = (vec3<f32>(x_77, x_77, x_77) * x_79);
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat2;
  let x_89 : vec4<f32> = x_17.unity_CameraToWorld[1i];
  u_xlat3 = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_94 : vec4<f32> = x_17.unity_CameraToWorld[0i];
  let x_96 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = u_xlat3;
  let x_100 : vec3<f32> = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.x, x_96.x, x_96.x)) + x_99);
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_101.z, x_100.z);
  let x_104 : vec4<f32> = x_17.unity_CameraToWorld[2i];
  let x_106 : vec4<f32> = u_xlat2;
  let x_109 : vec4<f32> = u_xlat2;
  let x_111 : vec3<f32> = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(x_106.z, x_106.z, x_106.z)) + vec3<f32>(x_109.x, x_109.y, x_109.w));
  let x_112 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_111.z);
  let x_114 : vec4<f32> = u_xlat2;
  let x_117 : vec4<f32> = x_17.unity_CameraToWorld[3i];
  let x_119 : vec3<f32> = (vec3<f32>(x_114.x, x_114.y, x_114.w) + vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_119.z);
  let x_122 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = x_17.unity_ShadowFadeCenterAndType;
  u_xlat3 = (vec3<f32>(x_122.x, x_122.y, x_122.w) + -(vec3<f32>(x_126.x, x_126.y, x_126.z)));
  let x_130 : vec3<f32> = u_xlat3;
  let x_131 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_130, x_131);
  let x_135 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_135);
  let x_139 : f32 = u_xlat0.z;
  let x_141 : f32 = u_xlat30;
  let x_144 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_139) * x_141) + x_144);
  let x_149 : f32 = x_17.unity_ShadowFadeCenterAndType.w;
  let x_151 : f32 = u_xlat0.x;
  let x_154 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_149 * x_151) + x_154);
  let x_158 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = x_17.x_LightPos;
  u_xlat10 = (-(vec3<f32>(x_158.x, x_158.y, x_158.w)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_167 : vec3<f32> = u_xlat10;
  let x_168 : vec3<f32> = u_xlat10;
  u_xlat21 = dot(x_167, x_168);
  let x_171 : f32 = u_xlat21;
  u_xlat31 = inverseSqrt(x_171);
  let x_173 : vec3<f32> = u_xlat10;
  let x_174 : f32 = u_xlat31;
  u_xlat3 = (x_173 * vec3<f32>(x_174, x_174, x_174));
  let x_178 : vec4<f32> = u_xlat2;
  let x_182 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_184 : vec3<f32> = (vec3<f32>(x_178.y, x_178.y, x_178.y) * vec3<f32>(x_182.x, x_182.y, x_182.w));
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_190 : vec4<f32> = u_xlat2;
  let x_193 : vec4<f32> = u_xlat4;
  let x_195 : vec3<f32> = ((vec3<f32>(x_188.x, x_188.y, x_188.w) * vec3<f32>(x_190.x, x_190.x, x_190.x)) + vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_201 : vec4<f32> = u_xlat2;
  let x_204 : vec4<f32> = u_xlat4;
  let x_206 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.w) * vec3<f32>(x_201.w, x_201.w, x_201.w)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat4;
  let x_212 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_214 : vec3<f32> = (vec3<f32>(x_209.x, x_209.y, x_209.z) + vec3<f32>(x_212.x, x_212.y, x_212.w));
  let x_215 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat4;
  let x_219 : vec4<f32> = u_xlat4;
  let x_221 : vec2<f32> = (vec2<f32>(x_217.x, x_217.y) / vec2<f32>(x_219.z, x_219.z));
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_221.x, x_221.y, x_222.z, x_222.w);
  let x_230 : vec4<f32> = u_xlat4;
  let x_233 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_230.x, x_230.y), -8.0f);
  u_xlat22 = x_233.w;
  let x_239 : f32 = u_xlat4.z;
  u_xlatb33 = (x_239 < 0.0f);
  let x_243 : bool = u_xlatb33;
  u_xlat33 = select(0.0f, 1.0f, x_243);
  let x_245 : f32 = u_xlat22;
  let x_246 : f32 = u_xlat33;
  u_xlat22 = (x_245 * x_246);
  let x_248 : f32 = u_xlat21;
  let x_250 : f32 = x_17.x_LightPos.w;
  u_xlat21 = (x_248 * x_250);
  let x_257 : f32 = u_xlat21;
  let x_259 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_257, x_257));
  u_xlat21 = x_259.x;
  let x_261 : f32 = u_xlat21;
  let x_262 : f32 = u_xlat22;
  u_xlat21 = (x_261 * x_262);
  let x_265 : f32 = u_xlat0.x;
  let x_268 : f32 = x_17.x_LightShadowData.z;
  let x_271 : f32 = x_17.x_LightShadowData.w;
  u_xlat0.x = ((x_265 * x_268) + x_271);
  let x_275 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_275, 0.0f, 1.0f);
  let x_280 : f32 = u_xlat0.x;
  u_xlatb22 = (x_280 < 0.99000001f);
  let x_283 : bool = u_xlatb22;
  if (x_283) {
    let x_286 : vec4<f32> = u_xlat2;
    let x_290 : vec4<f32> = x_17.unity_WorldToShadow[0i][1i];
    u_xlat4 = (vec4<f32>(x_286.y, x_286.y, x_286.y, x_286.y) * x_290);
    let x_293 : vec4<f32> = x_17.unity_WorldToShadow[0i][0i];
    let x_294 : vec4<f32> = u_xlat2;
    let x_297 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_293 * vec4<f32>(x_294.x, x_294.x, x_294.x, x_294.x)) + x_297);
    let x_300 : vec4<f32> = x_17.unity_WorldToShadow[0i][2i];
    let x_301 : vec4<f32> = u_xlat2;
    let x_304 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_300 * vec4<f32>(x_301.w, x_301.w, x_301.w, x_301.w)) + x_304);
    let x_306 : vec4<f32> = u_xlat4;
    let x_308 : vec4<f32> = x_17.unity_WorldToShadow[0i][3i];
    u_xlat4 = (x_306 + x_308);
    let x_310 : vec4<f32> = u_xlat4;
    let x_312 : vec4<f32> = u_xlat4;
    let x_314 : vec3<f32> = (vec3<f32>(x_310.x, x_310.y, x_310.z) / vec3<f32>(x_312.w, x_312.w, x_312.w));
    let x_315 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_318 : vec4<f32> = u_xlat4;
    let x_322 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_327 : vec2<f32> = ((vec2<f32>(x_318.x, x_318.y) * vec2<f32>(x_322.z, x_322.w)) + vec2<f32>(0.5f, 0.5f));
    let x_328 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_328.z, x_328.w);
    let x_330 : vec4<f32> = u_xlat5;
    let x_332 : vec2<f32> = floor(vec2<f32>(x_330.x, x_330.y));
    let x_333 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_332.x, x_332.y, x_333.z, x_333.w);
    let x_335 : vec4<f32> = u_xlat4;
    let x_338 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_341 : vec4<f32> = u_xlat5;
    let x_344 : vec2<f32> = ((vec2<f32>(x_335.x, x_335.y) * vec2<f32>(x_338.z, x_338.w)) + -(vec2<f32>(x_341.x, x_341.y)));
    let x_345 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_344.x, x_344.y, x_345.z, x_345.w);
    let x_348 : vec4<f32> = u_xlat4;
    u_xlat6 = (vec4<f32>(x_348.x, x_348.x, x_348.y, x_348.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_353 : vec4<f32> = u_xlat6;
    let x_355 : vec4<f32> = u_xlat6;
    let x_357 : vec2<f32> = (vec2<f32>(x_353.x, x_353.z) * vec2<f32>(x_355.x, x_355.z));
    let x_358 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_357.x, x_358.y, x_358.z, x_357.y);
    let x_362 : vec4<f32> = u_xlat7;
    let x_365 : vec4<f32> = u_xlat4;
    u_xlat25 = ((vec2<f32>(x_362.x, x_362.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_365.x, x_365.y)));
    let x_369 : vec4<f32> = u_xlat4;
    let x_373 : vec2<f32> = (-(vec2<f32>(x_369.x, x_369.y)) + vec2<f32>(1.0f, 1.0f));
    let x_374 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_373.x, x_374.y, x_373.y, x_374.w);
    let x_377 : vec4<f32> = u_xlat4;
    let x_380 : vec2<f32> = min(vec2<f32>(x_377.x, x_377.y), vec2<f32>(0.0f, 0.0f));
    let x_381 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
    let x_383 : vec4<f32> = u_xlat8;
    let x_386 : vec4<f32> = u_xlat8;
    let x_389 : vec4<f32> = u_xlat6;
    let x_391 : vec2<f32> = ((-(vec2<f32>(x_383.x, x_383.y)) * vec2<f32>(x_386.x, x_386.y)) + vec2<f32>(x_389.x, x_389.z));
    let x_392 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_391.x, x_392.y, x_391.y, x_392.w);
    let x_394 : vec4<f32> = u_xlat4;
    let x_396 : vec2<f32> = max(vec2<f32>(x_394.x, x_394.y), vec2<f32>(0.0f, 0.0f));
    let x_397 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
    let x_399 : vec4<f32> = u_xlat4;
    let x_402 : vec4<f32> = u_xlat4;
    let x_405 : vec4<f32> = u_xlat6;
    let x_407 : vec2<f32> = ((-(vec2<f32>(x_399.x, x_399.y)) * vec2<f32>(x_402.x, x_402.y)) + vec2<f32>(x_405.y, x_405.w));
    let x_408 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
    let x_411 : f32 = u_xlat25.x;
    u_xlat8.x = x_411;
    let x_414 : f32 = u_xlat6.x;
    u_xlat8.y = x_414;
    let x_417 : f32 = u_xlat4.x;
    u_xlat8.z = x_417;
    let x_420 : f32 = u_xlat7.x;
    u_xlat8.w = x_420;
    let x_422 : vec4<f32> = u_xlat8;
    u_xlat8 = (x_422 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_428 : f32 = u_xlat25.y;
    u_xlat7.x = x_428;
    let x_431 : f32 = u_xlat6.z;
    u_xlat7.y = x_431;
    let x_434 : f32 = u_xlat4.y;
    u_xlat7.z = x_434;
    let x_436 : vec4<f32> = u_xlat7;
    u_xlat6 = (x_436 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_438 : vec4<f32> = u_xlat8;
    let x_440 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec4<f32>(x_438.y, x_438.w, x_438.y, x_438.w) + vec4<f32>(x_440.x, x_440.z, x_440.x, x_440.z));
    let x_444 : vec4<f32> = u_xlat6;
    let x_446 : vec4<f32> = u_xlat6;
    u_xlat9 = (vec4<f32>(x_444.y, x_444.y, x_444.w, x_444.w) + vec4<f32>(x_446.x, x_446.x, x_446.z, x_446.z));
    let x_449 : vec4<f32> = u_xlat8;
    let x_451 : vec4<f32> = u_xlat7;
    let x_453 : vec2<f32> = (vec2<f32>(x_449.y, x_449.w) / vec2<f32>(x_451.z, x_451.w));
    let x_454 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
    let x_456 : vec4<f32> = u_xlat4;
    let x_460 : vec2<f32> = (vec2<f32>(x_456.x, x_456.y) + vec2<f32>(-1.5f, 0.5f));
    let x_461 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_460.x, x_460.y, x_461.z, x_461.w);
    let x_463 : vec4<f32> = u_xlat6;
    let x_465 : vec4<f32> = u_xlat9;
    u_xlat25 = (vec2<f32>(x_463.y, x_463.w) / vec2<f32>(x_465.y, x_465.w));
    let x_468 : vec2<f32> = u_xlat25;
    u_xlat25 = (x_468 + vec2<f32>(-1.5f, 0.5f));
    let x_470 : vec4<f32> = u_xlat4;
    let x_473 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_475 : vec2<f32> = (vec2<f32>(x_470.x, x_470.y) * vec2<f32>(x_473.x, x_473.x));
    let x_476 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
    let x_478 : vec2<f32> = u_xlat25;
    let x_480 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_482 : vec2<f32> = (x_478 * vec2<f32>(x_480.y, x_480.y));
    let x_483 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_482.x, x_482.y);
    let x_485 : vec4<f32> = u_xlat7;
    let x_486 : vec4<f32> = u_xlat9;
    u_xlat7 = (x_485 * x_486);
    let x_488 : vec4<f32> = u_xlat5;
    let x_491 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_494 : vec4<f32> = u_xlat6;
    u_xlat8 = ((vec4<f32>(x_488.x, x_488.y, x_488.x, x_488.y) * vec4<f32>(x_491.x, x_491.y, x_491.x, x_491.y)) + vec4<f32>(x_494.x, x_494.z, x_494.y, x_494.z));
    let x_499 : vec4<f32> = u_xlat8;
    let x_500 : vec2<f32> = vec2<f32>(x_499.x, x_499.y);
    let x_502 : f32 = u_xlat4.z;
    txVec0 = vec3<f32>(x_500.x, x_500.y, x_502);
    let x_514 : vec3<f32> = txVec0;
    let x_516 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_514.xy, x_514.z);
    u_xlat22 = x_516;
    let x_518 : vec4<f32> = u_xlat8;
    let x_519 : vec2<f32> = vec2<f32>(x_518.z, x_518.w);
    let x_521 : f32 = u_xlat4.z;
    txVec1 = vec3<f32>(x_519.x, x_519.y, x_521);
    let x_528 : vec3<f32> = txVec1;
    let x_530 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_528.xy, x_528.z);
    u_xlat33 = x_530;
    let x_531 : f32 = u_xlat33;
    let x_533 : f32 = u_xlat7.y;
    u_xlat33 = (x_531 * x_533);
    let x_536 : f32 = u_xlat7.x;
    let x_537 : f32 = u_xlat22;
    let x_539 : f32 = u_xlat33;
    u_xlat22 = ((x_536 * x_537) + x_539);
    let x_541 : vec4<f32> = u_xlat5;
    let x_544 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_547 : vec4<f32> = u_xlat6;
    u_xlat5 = ((vec4<f32>(x_541.x, x_541.y, x_541.x, x_541.y) * vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y)) + vec4<f32>(x_547.x, x_547.w, x_547.y, x_547.w));
    let x_551 : vec4<f32> = u_xlat5;
    let x_552 : vec2<f32> = vec2<f32>(x_551.x, x_551.y);
    let x_554 : f32 = u_xlat4.z;
    txVec2 = vec3<f32>(x_552.x, x_552.y, x_554);
    let x_561 : vec3<f32> = txVec2;
    let x_563 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_561.xy, x_561.z);
    u_xlat33 = x_563;
    let x_565 : f32 = u_xlat7.z;
    let x_566 : f32 = u_xlat33;
    let x_568 : f32 = u_xlat22;
    u_xlat22 = ((x_565 * x_566) + x_568);
    let x_571 : vec4<f32> = u_xlat5;
    let x_572 : vec2<f32> = vec2<f32>(x_571.z, x_571.w);
    let x_574 : f32 = u_xlat4.z;
    txVec3 = vec3<f32>(x_572.x, x_572.y, x_574);
    let x_581 : vec3<f32> = txVec3;
    let x_583 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_581.xy, x_581.z);
    u_xlat33 = x_583;
    let x_585 : f32 = u_xlat7.w;
    let x_586 : f32 = u_xlat33;
    let x_588 : f32 = u_xlat22;
    u_xlat22 = ((x_585 * x_586) + x_588);
    let x_591 : f32 = x_17.x_LightShadowData.x;
    u_xlat33 = (-(x_591) + 1.0f);
    let x_594 : f32 = u_xlat22;
    let x_595 : f32 = u_xlat33;
    let x_598 : f32 = x_17.x_LightShadowData.x;
    u_xlat22 = ((x_594 * x_595) + x_598);
  } else {
    u_xlat22 = 1.0f;
  }
  let x_601 : f32 = u_xlat22;
  u_xlat33 = (-(x_601) + 1.0f);
  let x_605 : f32 = u_xlat0.x;
  let x_606 : f32 = u_xlat33;
  let x_608 : f32 = u_xlat22;
  u_xlat0.x = ((x_605 * x_606) + x_608);
  let x_612 : f32 = u_xlat0.x;
  let x_613 : f32 = u_xlat21;
  u_xlat0.x = (x_612 * x_613);
  let x_616 : vec3<f32> = u_xlat0;
  let x_620 : vec4<f32> = x_17.x_LightColor;
  let x_622 : vec3<f32> = (vec3<f32>(x_616.x, x_616.x, x_616.x) * vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_630 : vec3<f32> = u_xlat1;
  let x_632 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_630.x, x_630.y));
  let x_633 : vec3<f32> = vec3<f32>(x_632.x, x_632.y, x_632.z);
  let x_634 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_641 : vec3<f32> = u_xlat1;
  let x_643 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_641.x, x_641.y));
  u_xlat6 = x_643;
  let x_649 : vec3<f32> = u_xlat1;
  let x_651 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_649.x, x_649.y));
  u_xlat1 = vec3<f32>(x_651.x, x_651.y, x_651.z);
  let x_653 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_653 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_660 : vec3<f32> = u_xlat1;
  let x_661 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_660, x_661);
  let x_665 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_665);
  let x_668 : vec3<f32> = u_xlat0;
  let x_670 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_668.x, x_668.x, x_668.x) * x_670);
  let x_672 : vec4<f32> = u_xlat2;
  let x_676 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_678 : vec3<f32> = (vec3<f32>(x_672.x, x_672.y, x_672.w) + -(x_676));
  let x_679 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat2;
  let x_683 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_681.x, x_681.y, x_681.z), vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_688 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_688);
  let x_691 : vec3<f32> = u_xlat0;
  let x_693 : vec4<f32> = u_xlat2;
  let x_695 : vec3<f32> = (vec3<f32>(x_691.x, x_691.x, x_691.x) * vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(vec4<f32>(x_698.w, x_698.x, x_698.y, x_698.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_703 : vec3<f32> = u_xlat10;
  let x_704 : f32 = u_xlat31;
  let x_707 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_703 * vec3<f32>(x_704, x_704, x_704)) + -(vec3<f32>(x_707.x, x_707.y, x_707.z)));
  let x_711 : vec3<f32> = u_xlat0;
  let x_712 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_711, x_712);
  let x_714 : f32 = u_xlat30;
  u_xlat30 = max(x_714, 0.001f);
  let x_717 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_717);
  let x_719 : f32 = u_xlat30;
  let x_721 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_719, x_719, x_719) * x_721);
  let x_723 : vec3<f32> = u_xlat1;
  let x_724 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(x_723, -(vec3<f32>(x_724.x, x_724.y, x_724.z)));
  let x_728 : vec3<f32> = u_xlat1;
  let x_729 : vec3<f32> = u_xlat3;
  u_xlat31 = dot(x_728, x_729);
  let x_731 : f32 = u_xlat31;
  u_xlat31 = clamp(x_731, 0.0f, 1.0f);
  let x_733 : vec3<f32> = u_xlat1;
  let x_734 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_733, x_734);
  let x_738 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_738, 0.0f, 1.0f);
  let x_741 : vec3<f32> = u_xlat3;
  let x_742 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_741, x_742);
  let x_746 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_746, 0.0f, 1.0f);
  let x_750 : f32 = u_xlat0.x;
  let x_752 : f32 = u_xlat0.x;
  u_xlat10.x = (x_750 * x_752);
  let x_755 : vec3<f32> = u_xlat10;
  let x_757 : vec4<f32> = u_xlat7;
  u_xlat10.x = dot(vec2<f32>(x_755.x, x_755.x), vec2<f32>(x_757.x, x_757.x));
  let x_762 : f32 = u_xlat10.x;
  u_xlat10.x = (x_762 + -0.5f);
  let x_767 : f32 = u_xlat31;
  u_xlat20 = (-(x_767) + 1.0f);
  let x_771 : f32 = u_xlat20;
  let x_772 : f32 = u_xlat20;
  u_xlat11 = (x_771 * x_772);
  let x_774 : f32 = u_xlat11;
  let x_775 : f32 = u_xlat11;
  u_xlat11 = (x_774 * x_775);
  let x_777 : f32 = u_xlat20;
  let x_778 : f32 = u_xlat11;
  u_xlat20 = (x_777 * x_778);
  let x_781 : f32 = u_xlat10.x;
  let x_782 : f32 = u_xlat20;
  u_xlat20 = ((x_781 * x_782) + 1.0f);
  let x_785 : f32 = u_xlat30;
  u_xlat11 = (-(abs(x_785)) + 1.0f);
  let x_789 : f32 = u_xlat11;
  let x_790 : f32 = u_xlat11;
  u_xlat21 = (x_789 * x_790);
  let x_792 : f32 = u_xlat21;
  let x_793 : f32 = u_xlat21;
  u_xlat21 = (x_792 * x_793);
  let x_795 : f32 = u_xlat11;
  let x_796 : f32 = u_xlat21;
  u_xlat11 = (x_795 * x_796);
  let x_799 : f32 = u_xlat10.x;
  let x_800 : f32 = u_xlat11;
  u_xlat10.x = ((x_799 * x_800) + 1.0f);
  let x_805 : f32 = u_xlat10.x;
  let x_806 : f32 = u_xlat20;
  u_xlat10.x = (x_805 * x_806);
  let x_810 : f32 = u_xlat7.x;
  let x_812 : f32 = u_xlat7.x;
  u_xlat20 = (x_810 * x_812);
  let x_814 : f32 = u_xlat20;
  u_xlat20 = max(x_814, 0.002f);
  let x_817 : f32 = u_xlat20;
  u_xlat11 = (-(x_817) + 1.0f);
  let x_820 : f32 = u_xlat30;
  let x_822 : f32 = u_xlat11;
  let x_824 : f32 = u_xlat20;
  u_xlat21 = ((abs(x_820) * x_822) + x_824);
  let x_826 : f32 = u_xlat31;
  let x_827 : f32 = u_xlat11;
  let x_829 : f32 = u_xlat20;
  u_xlat11 = ((x_826 * x_827) + x_829);
  let x_831 : f32 = u_xlat30;
  let x_833 : f32 = u_xlat11;
  u_xlat30 = (abs(x_831) * x_833);
  let x_835 : f32 = u_xlat31;
  let x_836 : f32 = u_xlat21;
  let x_838 : f32 = u_xlat30;
  u_xlat30 = ((x_835 * x_836) + x_838);
  let x_840 : f32 = u_xlat30;
  u_xlat30 = (x_840 + 0.00001f);
  let x_843 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_843);
  let x_845 : f32 = u_xlat20;
  let x_846 : f32 = u_xlat20;
  u_xlat20 = (x_845 * x_846);
  let x_849 : f32 = u_xlat1.x;
  let x_850 : f32 = u_xlat20;
  let x_853 : f32 = u_xlat1.x;
  u_xlat11 = ((x_849 * x_850) + -(x_853));
  let x_856 : f32 = u_xlat11;
  let x_858 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_856 * x_858) + 1.0f);
  let x_862 : f32 = u_xlat20;
  u_xlat20 = (x_862 * 0.318309873f);
  let x_866 : f32 = u_xlat1.x;
  let x_868 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_866 * x_868) + 0.0000001f);
  let x_873 : f32 = u_xlat20;
  let x_875 : f32 = u_xlat1.x;
  u_xlat20 = (x_873 / x_875);
  let x_877 : f32 = u_xlat20;
  let x_878 : f32 = u_xlat30;
  u_xlat10.y = (x_877 * x_878);
  let x_881 : f32 = u_xlat31;
  let x_883 : vec3<f32> = u_xlat10;
  let x_885 : vec2<f32> = (vec2<f32>(x_881, x_881) * vec2<f32>(x_883.x, x_883.y));
  let x_886 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_885.x, x_885.y, x_886.z);
  let x_889 : f32 = u_xlat10.y;
  u_xlat20 = (x_889 * 3.141592741f);
  let x_892 : f32 = u_xlat20;
  u_xlat20 = max(x_892, 0.0f);
  let x_894 : vec4<f32> = u_xlat6;
  let x_896 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_894.x, x_894.y, x_894.z), vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_900 : f32 = u_xlat30;
  u_xlatb30 = !((x_900 == 0.0f));
  let x_902 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_902);
  let x_904 : f32 = u_xlat30;
  let x_905 : f32 = u_xlat20;
  u_xlat20 = (x_904 * x_905);
  let x_907 : vec3<f32> = u_xlat10;
  let x_909 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_907.x, x_907.x, x_907.x) * vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : vec4<f32> = u_xlat4;
  let x_914 : f32 = u_xlat20;
  u_xlat10 = (vec3<f32>(x_912.x, x_912.y, x_912.z) * vec3<f32>(x_914, x_914, x_914));
  let x_918 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_918) + 1.0f);
  let x_923 : f32 = u_xlat0.x;
  let x_925 : f32 = u_xlat0.x;
  u_xlat31 = (x_923 * x_925);
  let x_927 : f32 = u_xlat31;
  let x_928 : f32 = u_xlat31;
  u_xlat31 = (x_927 * x_928);
  let x_931 : f32 = u_xlat0.x;
  let x_932 : f32 = u_xlat31;
  u_xlat0.x = (x_931 * x_932);
  let x_935 : vec4<f32> = u_xlat7;
  let x_937 : vec3<f32> = u_xlat0;
  let x_940 : vec4<f32> = u_xlat6;
  let x_942 : vec3<f32> = ((vec3<f32>(x_935.y, x_935.z, x_935.w) * vec3<f32>(x_937.x, x_937.x, x_937.x)) + vec3<f32>(x_940.x, x_940.y, x_940.z));
  let x_943 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec3<f32> = u_xlat10;
  let x_946 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_945 * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_951 : vec4<f32> = u_xlat5;
  let x_953 : vec3<f32> = u_xlat1;
  let x_955 : vec3<f32> = u_xlat0;
  let x_956 : vec3<f32> = ((vec3<f32>(x_951.x, x_951.y, x_951.z) * x_953) + x_955);
  let x_957 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

