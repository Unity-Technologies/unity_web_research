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

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(6) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture2 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat31 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlatb33 : bool;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat25 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat11 : f32;
  var u_xlatb30 : bool;
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
    let x_498 : vec4<f32> = u_xlat8;
    let x_499 : vec2<f32> = vec2<f32>(x_498.x, x_498.y);
    let x_501 : f32 = u_xlat4.z;
    txVec0 = vec3<f32>(x_499.x, x_499.y, x_501);
    let x_513 : vec3<f32> = txVec0;
    let x_515 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_513.xy, x_513.z);
    u_xlat22 = x_515;
    let x_517 : vec4<f32> = u_xlat8;
    let x_518 : vec2<f32> = vec2<f32>(x_517.z, x_517.w);
    let x_520 : f32 = u_xlat4.z;
    txVec1 = vec3<f32>(x_518.x, x_518.y, x_520);
    let x_527 : vec3<f32> = txVec1;
    let x_529 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_527.xy, x_527.z);
    u_xlat33 = x_529;
    let x_530 : f32 = u_xlat33;
    let x_532 : f32 = u_xlat7.y;
    u_xlat33 = (x_530 * x_532);
    let x_535 : f32 = u_xlat7.x;
    let x_536 : f32 = u_xlat22;
    let x_538 : f32 = u_xlat33;
    u_xlat22 = ((x_535 * x_536) + x_538);
    let x_540 : vec4<f32> = u_xlat5;
    let x_543 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_546 : vec4<f32> = u_xlat6;
    u_xlat5 = ((vec4<f32>(x_540.x, x_540.y, x_540.x, x_540.y) * vec4<f32>(x_543.x, x_543.y, x_543.x, x_543.y)) + vec4<f32>(x_546.x, x_546.w, x_546.y, x_546.w));
    let x_550 : vec4<f32> = u_xlat5;
    let x_551 : vec2<f32> = vec2<f32>(x_550.x, x_550.y);
    let x_553 : f32 = u_xlat4.z;
    txVec2 = vec3<f32>(x_551.x, x_551.y, x_553);
    let x_560 : vec3<f32> = txVec2;
    let x_562 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_560.xy, x_560.z);
    u_xlat33 = x_562;
    let x_564 : f32 = u_xlat7.z;
    let x_565 : f32 = u_xlat33;
    let x_567 : f32 = u_xlat22;
    u_xlat22 = ((x_564 * x_565) + x_567);
    let x_570 : vec4<f32> = u_xlat5;
    let x_571 : vec2<f32> = vec2<f32>(x_570.z, x_570.w);
    let x_573 : f32 = u_xlat4.z;
    txVec3 = vec3<f32>(x_571.x, x_571.y, x_573);
    let x_580 : vec3<f32> = txVec3;
    let x_582 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_580.xy, x_580.z);
    u_xlat33 = x_582;
    let x_584 : f32 = u_xlat7.w;
    let x_585 : f32 = u_xlat33;
    let x_587 : f32 = u_xlat22;
    u_xlat22 = ((x_584 * x_585) + x_587);
    let x_590 : f32 = x_17.x_LightShadowData.x;
    u_xlat33 = (-(x_590) + 1.0f);
    let x_593 : f32 = u_xlat22;
    let x_594 : f32 = u_xlat33;
    let x_597 : f32 = x_17.x_LightShadowData.x;
    u_xlat22 = ((x_593 * x_594) + x_597);
  } else {
    u_xlat22 = 1.0f;
  }
  let x_600 : f32 = u_xlat22;
  u_xlat33 = (-(x_600) + 1.0f);
  let x_604 : f32 = u_xlat0.x;
  let x_605 : f32 = u_xlat33;
  let x_607 : f32 = u_xlat22;
  u_xlat0.x = ((x_604 * x_605) + x_607);
  let x_611 : f32 = u_xlat0.x;
  let x_612 : f32 = u_xlat21;
  u_xlat0.x = (x_611 * x_612);
  let x_615 : vec3<f32> = u_xlat0;
  let x_619 : vec4<f32> = x_17.x_LightColor;
  let x_621 : vec3<f32> = (vec3<f32>(x_615.x, x_615.x, x_615.x) * vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_629 : vec3<f32> = u_xlat1;
  let x_631 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_629.x, x_629.y));
  let x_632 : vec3<f32> = vec3<f32>(x_631.x, x_631.y, x_631.z);
  let x_633 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_640 : vec3<f32> = u_xlat1;
  let x_642 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_640.x, x_640.y));
  u_xlat6 = x_642;
  let x_648 : vec3<f32> = u_xlat1;
  let x_650 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_648.x, x_648.y));
  u_xlat1 = vec3<f32>(x_650.x, x_650.y, x_650.z);
  let x_652 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_652 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_659 : vec3<f32> = u_xlat1;
  let x_660 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_659, x_660);
  let x_664 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_664);
  let x_667 : vec3<f32> = u_xlat0;
  let x_669 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_667.x, x_667.x, x_667.x) * x_669);
  let x_671 : vec4<f32> = u_xlat2;
  let x_675 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_677 : vec3<f32> = (vec3<f32>(x_671.x, x_671.y, x_671.w) + -(x_675));
  let x_678 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat2;
  let x_682 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_680.x, x_680.y, x_680.z), vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_687 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_687);
  let x_690 : vec3<f32> = u_xlat0;
  let x_692 : vec4<f32> = u_xlat2;
  let x_694 : vec3<f32> = (vec3<f32>(x_690.x, x_690.x, x_690.x) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(vec4<f32>(x_697.w, x_697.x, x_697.y, x_697.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_702 : vec3<f32> = u_xlat10;
  let x_703 : f32 = u_xlat31;
  let x_706 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_702 * vec3<f32>(x_703, x_703, x_703)) + -(vec3<f32>(x_706.x, x_706.y, x_706.z)));
  let x_710 : vec3<f32> = u_xlat0;
  let x_711 : vec3<f32> = u_xlat0;
  u_xlat30 = dot(x_710, x_711);
  let x_713 : f32 = u_xlat30;
  u_xlat30 = max(x_713, 0.001f);
  let x_716 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_716);
  let x_718 : f32 = u_xlat30;
  let x_720 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_718, x_718, x_718) * x_720);
  let x_722 : vec3<f32> = u_xlat1;
  let x_723 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(x_722, -(vec3<f32>(x_723.x, x_723.y, x_723.z)));
  let x_727 : vec3<f32> = u_xlat1;
  let x_728 : vec3<f32> = u_xlat3;
  u_xlat31 = dot(x_727, x_728);
  let x_730 : f32 = u_xlat31;
  u_xlat31 = clamp(x_730, 0.0f, 1.0f);
  let x_732 : vec3<f32> = u_xlat1;
  let x_733 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_732, x_733);
  let x_737 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_737, 0.0f, 1.0f);
  let x_740 : vec3<f32> = u_xlat3;
  let x_741 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_740, x_741);
  let x_745 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_745, 0.0f, 1.0f);
  let x_749 : f32 = u_xlat0.x;
  let x_751 : f32 = u_xlat0.x;
  u_xlat10.x = (x_749 * x_751);
  let x_754 : vec3<f32> = u_xlat10;
  let x_756 : vec4<f32> = u_xlat7;
  u_xlat10.x = dot(vec2<f32>(x_754.x, x_754.x), vec2<f32>(x_756.x, x_756.x));
  let x_761 : f32 = u_xlat10.x;
  u_xlat10.x = (x_761 + -0.5f);
  let x_766 : f32 = u_xlat31;
  u_xlat20 = (-(x_766) + 1.0f);
  let x_770 : f32 = u_xlat20;
  let x_771 : f32 = u_xlat20;
  u_xlat11 = (x_770 * x_771);
  let x_773 : f32 = u_xlat11;
  let x_774 : f32 = u_xlat11;
  u_xlat11 = (x_773 * x_774);
  let x_776 : f32 = u_xlat20;
  let x_777 : f32 = u_xlat11;
  u_xlat20 = (x_776 * x_777);
  let x_780 : f32 = u_xlat10.x;
  let x_781 : f32 = u_xlat20;
  u_xlat20 = ((x_780 * x_781) + 1.0f);
  let x_784 : f32 = u_xlat30;
  u_xlat11 = (-(abs(x_784)) + 1.0f);
  let x_788 : f32 = u_xlat11;
  let x_789 : f32 = u_xlat11;
  u_xlat21 = (x_788 * x_789);
  let x_791 : f32 = u_xlat21;
  let x_792 : f32 = u_xlat21;
  u_xlat21 = (x_791 * x_792);
  let x_794 : f32 = u_xlat11;
  let x_795 : f32 = u_xlat21;
  u_xlat11 = (x_794 * x_795);
  let x_798 : f32 = u_xlat10.x;
  let x_799 : f32 = u_xlat11;
  u_xlat10.x = ((x_798 * x_799) + 1.0f);
  let x_804 : f32 = u_xlat10.x;
  let x_805 : f32 = u_xlat20;
  u_xlat10.x = (x_804 * x_805);
  let x_809 : f32 = u_xlat7.x;
  let x_811 : f32 = u_xlat7.x;
  u_xlat20 = (x_809 * x_811);
  let x_813 : f32 = u_xlat20;
  u_xlat20 = max(x_813, 0.002f);
  let x_816 : f32 = u_xlat20;
  u_xlat11 = (-(x_816) + 1.0f);
  let x_819 : f32 = u_xlat30;
  let x_821 : f32 = u_xlat11;
  let x_823 : f32 = u_xlat20;
  u_xlat21 = ((abs(x_819) * x_821) + x_823);
  let x_825 : f32 = u_xlat31;
  let x_826 : f32 = u_xlat11;
  let x_828 : f32 = u_xlat20;
  u_xlat11 = ((x_825 * x_826) + x_828);
  let x_830 : f32 = u_xlat30;
  let x_832 : f32 = u_xlat11;
  u_xlat30 = (abs(x_830) * x_832);
  let x_834 : f32 = u_xlat31;
  let x_835 : f32 = u_xlat21;
  let x_837 : f32 = u_xlat30;
  u_xlat30 = ((x_834 * x_835) + x_837);
  let x_839 : f32 = u_xlat30;
  u_xlat30 = (x_839 + 0.00001f);
  let x_842 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_842);
  let x_844 : f32 = u_xlat20;
  let x_845 : f32 = u_xlat20;
  u_xlat20 = (x_844 * x_845);
  let x_848 : f32 = u_xlat1.x;
  let x_849 : f32 = u_xlat20;
  let x_852 : f32 = u_xlat1.x;
  u_xlat11 = ((x_848 * x_849) + -(x_852));
  let x_855 : f32 = u_xlat11;
  let x_857 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_855 * x_857) + 1.0f);
  let x_861 : f32 = u_xlat20;
  u_xlat20 = (x_861 * 0.318309873f);
  let x_865 : f32 = u_xlat1.x;
  let x_867 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_865 * x_867) + 0.0000001f);
  let x_872 : f32 = u_xlat20;
  let x_874 : f32 = u_xlat1.x;
  u_xlat20 = (x_872 / x_874);
  let x_876 : f32 = u_xlat20;
  let x_877 : f32 = u_xlat30;
  u_xlat10.y = (x_876 * x_877);
  let x_880 : f32 = u_xlat31;
  let x_882 : vec3<f32> = u_xlat10;
  let x_884 : vec2<f32> = (vec2<f32>(x_880, x_880) * vec2<f32>(x_882.x, x_882.y));
  let x_885 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_884.x, x_884.y, x_885.z);
  let x_888 : f32 = u_xlat10.y;
  u_xlat20 = (x_888 * 3.141592741f);
  let x_891 : f32 = u_xlat20;
  u_xlat20 = max(x_891, 0.0f);
  let x_893 : vec4<f32> = u_xlat6;
  let x_895 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_893.x, x_893.y, x_893.z), vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_899 : f32 = u_xlat30;
  u_xlatb30 = !((x_899 == 0.0f));
  let x_901 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_901);
  let x_903 : f32 = u_xlat30;
  let x_904 : f32 = u_xlat20;
  u_xlat20 = (x_903 * x_904);
  let x_906 : vec3<f32> = u_xlat10;
  let x_908 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_906.x, x_906.x, x_906.x) * vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_911 : vec4<f32> = u_xlat4;
  let x_913 : f32 = u_xlat20;
  u_xlat10 = (vec3<f32>(x_911.x, x_911.y, x_911.z) * vec3<f32>(x_913, x_913, x_913));
  let x_917 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_917) + 1.0f);
  let x_922 : f32 = u_xlat0.x;
  let x_924 : f32 = u_xlat0.x;
  u_xlat31 = (x_922 * x_924);
  let x_926 : f32 = u_xlat31;
  let x_927 : f32 = u_xlat31;
  u_xlat31 = (x_926 * x_927);
  let x_930 : f32 = u_xlat0.x;
  let x_931 : f32 = u_xlat31;
  u_xlat0.x = (x_930 * x_931);
  let x_934 : vec4<f32> = u_xlat7;
  let x_936 : vec3<f32> = u_xlat0;
  let x_939 : vec4<f32> = u_xlat6;
  let x_941 : vec3<f32> = ((vec3<f32>(x_934.y, x_934.z, x_934.w) * vec3<f32>(x_936.x, x_936.x, x_936.x)) + vec3<f32>(x_939.x, x_939.y, x_939.z));
  let x_942 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : vec3<f32> = u_xlat10;
  let x_945 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_944 * vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_950 : vec4<f32> = u_xlat5;
  let x_952 : vec3<f32> = u_xlat1;
  let x_954 : vec3<f32> = u_xlat0;
  let x_955 : vec3<f32> = ((vec3<f32>(x_950.x, x_950.y, x_950.z) * x_952) + x_954);
  let x_956 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
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
