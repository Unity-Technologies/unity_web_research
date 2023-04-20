diagnostic(off, derivative_uniformity);

alias Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(32) */
  x_ZBufferParams : vec4<f32>,
  /* @offset(48) */
  unity_CameraToWorld : mat4x4<f32>,
  /* @offset(112) */
  unity_WorldToShadow : Arr,
  /* @offset(368) */
  x_LightShadowData : vec4<f32>,
  /* @offset(384) */
  unity_ShadowFadeCenterAndType : vec4<f32>,
  /* @offset(400) */
  x_LightPos : vec4<f32>,
  /* @offset(416) */
  x_LightColor : vec4<f32>,
  /* @offset(432) */
  unity_WorldToLight : mat4x4<f32>,
  /* @offset(496) */
  x_ShadowMapTexture_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat28 : f32;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

var<private> u_xlatb20 : bool;

var<private> u_xlat20 : f32;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> u_xlatb28 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(15) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_NHxRoughness : sampler;

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
  u_xlat27 = x_61.x;
  let x_65 : f32 = x_17.x_ZBufferParams.x;
  let x_66 : f32 = u_xlat27;
  let x_70 : f32 = x_17.x_ZBufferParams.y;
  u_xlat27 = ((x_65 * x_66) + x_70);
  let x_73 : f32 = u_xlat27;
  u_xlat27 = (1.0f / x_73);
  let x_77 : f32 = u_xlat27;
  let x_79 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = (vec3<f32>(x_77, x_77, x_77) * x_79);
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat2;
  let x_89 : vec4<f32> = x_17.unity_CameraToWorld[1i];
  let x_91 : vec3<f32> = (vec3<f32>(x_84.y, x_84.y, x_84.y) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_96 : vec4<f32> = x_17.unity_CameraToWorld[0i];
  let x_98 : vec4<f32> = u_xlat2;
  let x_101 : vec4<f32> = u_xlat3;
  let x_103 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.z) * vec3<f32>(x_98.x, x_98.x, x_98.x)) + vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_103.z);
  let x_107 : vec4<f32> = x_17.unity_CameraToWorld[2i];
  let x_109 : vec4<f32> = u_xlat2;
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.z, x_109.z, x_109.z)) + vec3<f32>(x_112.x, x_112.y, x_112.w));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_114.z);
  let x_117 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = x_17.unity_CameraToWorld[3i];
  let x_122 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.w) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_122.z);
  let x_125 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = x_17.unity_ShadowFadeCenterAndType;
  let x_132 : vec3<f32> = (vec3<f32>(x_125.x, x_125.y, x_125.w) + -(vec3<f32>(x_129.x, x_129.y, x_129.z)));
  let x_133 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_135 : vec4<f32> = u_xlat3;
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_135.x, x_135.y, x_135.z), vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_142 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_142);
  let x_146 : f32 = u_xlat0.z;
  let x_148 : f32 = u_xlat27;
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_146) * x_148) + x_151);
  let x_156 : f32 = x_17.unity_ShadowFadeCenterAndType.w;
  let x_158 : f32 = u_xlat0.x;
  let x_161 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_156 * x_158) + x_161);
  let x_165 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = x_17.x_LightPos;
  u_xlat9 = (-(vec3<f32>(x_165.x, x_165.y, x_165.w)) + vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_174 : vec3<f32> = u_xlat9;
  let x_175 : vec3<f32> = u_xlat9;
  u_xlat19 = dot(x_174, x_175);
  let x_178 : f32 = u_xlat19;
  u_xlat28 = inverseSqrt(x_178);
  let x_180 : vec3<f32> = u_xlat9;
  let x_181 : f32 = u_xlat28;
  u_xlat9 = (x_180 * vec3<f32>(x_181, x_181, x_181));
  let x_184 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_190 : vec3<f32> = (vec3<f32>(x_184.y, x_184.y, x_184.y) * vec3<f32>(x_188.x, x_188.y, x_188.w));
  let x_191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_196 : vec4<f32> = u_xlat2;
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.w) * vec3<f32>(x_196.x, x_196.x, x_196.x)) + vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_207 : vec4<f32> = u_xlat2;
  let x_210 : vec4<f32> = u_xlat3;
  let x_212 : vec3<f32> = ((vec3<f32>(x_205.x, x_205.y, x_205.w) * vec3<f32>(x_207.w, x_207.w, x_207.w)) + vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat3;
  let x_218 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_220 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) + vec3<f32>(x_218.x, x_218.y, x_218.w));
  let x_221 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat3;
  let x_225 : vec4<f32> = u_xlat3;
  let x_227 : vec2<f32> = (vec2<f32>(x_223.x, x_223.y) / vec2<f32>(x_225.z, x_225.z));
  let x_228 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_227.x, x_227.y, x_228.z, x_228.w);
  let x_235 : vec4<f32> = u_xlat3;
  let x_238 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_235.x, x_235.y), -8.0f);
  u_xlat28 = x_238.w;
  let x_244 : f32 = u_xlat3.z;
  u_xlatb20 = (x_244 < 0.0f);
  let x_248 : bool = u_xlatb20;
  u_xlat20 = select(0.0f, 1.0f, x_248);
  let x_250 : f32 = u_xlat28;
  let x_251 : f32 = u_xlat20;
  u_xlat28 = (x_250 * x_251);
  let x_253 : f32 = u_xlat19;
  let x_255 : f32 = x_17.x_LightPos.w;
  u_xlat19 = (x_253 * x_255);
  let x_262 : f32 = u_xlat19;
  let x_264 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_262, x_262));
  u_xlat19 = x_264.x;
  let x_266 : f32 = u_xlat19;
  let x_267 : f32 = u_xlat28;
  u_xlat19 = (x_266 * x_267);
  let x_270 : f32 = u_xlat0.x;
  let x_273 : f32 = x_17.x_LightShadowData.z;
  let x_276 : f32 = x_17.x_LightShadowData.w;
  u_xlat0.x = ((x_270 * x_273) + x_276);
  let x_280 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_280, 0.0f, 1.0f);
  let x_285 : f32 = u_xlat0.x;
  u_xlatb28 = (x_285 < 0.99000000953674316406f);
  let x_288 : bool = u_xlatb28;
  if (x_288) {
    let x_291 : vec4<f32> = u_xlat2;
    let x_295 : vec4<f32> = x_17.unity_WorldToShadow[0i][1i];
    u_xlat3 = (vec4<f32>(x_291.y, x_291.y, x_291.y, x_291.y) * x_295);
    let x_298 : vec4<f32> = x_17.unity_WorldToShadow[0i][0i];
    let x_299 : vec4<f32> = u_xlat2;
    let x_302 : vec4<f32> = u_xlat3;
    u_xlat3 = ((x_298 * vec4<f32>(x_299.x, x_299.x, x_299.x, x_299.x)) + x_302);
    let x_305 : vec4<f32> = x_17.unity_WorldToShadow[0i][2i];
    let x_306 : vec4<f32> = u_xlat2;
    let x_309 : vec4<f32> = u_xlat3;
    u_xlat3 = ((x_305 * vec4<f32>(x_306.w, x_306.w, x_306.w, x_306.w)) + x_309);
    let x_311 : vec4<f32> = u_xlat3;
    let x_313 : vec4<f32> = x_17.unity_WorldToShadow[0i][3i];
    u_xlat3 = (x_311 + x_313);
    let x_315 : vec4<f32> = u_xlat3;
    let x_317 : vec4<f32> = u_xlat3;
    let x_319 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) / vec3<f32>(x_317.w, x_317.w, x_317.w));
    let x_320 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_323 : vec4<f32> = u_xlat3;
    let x_327 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_332 : vec2<f32> = ((vec2<f32>(x_323.x, x_323.y) * vec2<f32>(x_327.z, x_327.w)) + vec2<f32>(0.5f, 0.5f));
    let x_333 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_333.z, x_333.w);
    let x_335 : vec4<f32> = u_xlat4;
    let x_337 : vec2<f32> = floor(vec2<f32>(x_335.x, x_335.y));
    let x_338 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_337.x, x_337.y, x_338.z, x_338.w);
    let x_340 : vec4<f32> = u_xlat3;
    let x_343 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_346 : vec4<f32> = u_xlat4;
    let x_349 : vec2<f32> = ((vec2<f32>(x_340.x, x_340.y) * vec2<f32>(x_343.z, x_343.w)) + -(vec2<f32>(x_346.x, x_346.y)));
    let x_350 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_349.x, x_349.y, x_350.z, x_350.w);
    let x_353 : vec4<f32> = u_xlat3;
    u_xlat5 = (vec4<f32>(x_353.x, x_353.x, x_353.y, x_353.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_358 : vec4<f32> = u_xlat5;
    let x_360 : vec4<f32> = u_xlat5;
    let x_362 : vec2<f32> = (vec2<f32>(x_358.x, x_358.z) * vec2<f32>(x_360.x, x_360.z));
    let x_363 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_362.x, x_363.y, x_363.z, x_362.y);
    let x_367 : vec4<f32> = u_xlat6;
    let x_370 : vec4<f32> = u_xlat3;
    u_xlat22 = ((vec2<f32>(x_367.x, x_367.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_370.x, x_370.y)));
    let x_374 : vec4<f32> = u_xlat3;
    let x_378 : vec2<f32> = (-(vec2<f32>(x_374.x, x_374.y)) + vec2<f32>(1.0f, 1.0f));
    let x_379 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_378.x, x_379.y, x_378.y, x_379.w);
    let x_382 : vec4<f32> = u_xlat3;
    let x_385 : vec2<f32> = min(vec2<f32>(x_382.x, x_382.y), vec2<f32>(0.0f, 0.0f));
    let x_386 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_385.x, x_385.y, x_386.z, x_386.w);
    let x_388 : vec4<f32> = u_xlat7;
    let x_391 : vec4<f32> = u_xlat7;
    let x_394 : vec4<f32> = u_xlat5;
    let x_396 : vec2<f32> = ((-(vec2<f32>(x_388.x, x_388.y)) * vec2<f32>(x_391.x, x_391.y)) + vec2<f32>(x_394.x, x_394.z));
    let x_397 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_396.x, x_397.y, x_396.y, x_397.w);
    let x_399 : vec4<f32> = u_xlat3;
    let x_401 : vec2<f32> = max(vec2<f32>(x_399.x, x_399.y), vec2<f32>(0.0f, 0.0f));
    let x_402 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
    let x_404 : vec4<f32> = u_xlat3;
    let x_407 : vec4<f32> = u_xlat3;
    let x_410 : vec4<f32> = u_xlat5;
    let x_412 : vec2<f32> = ((-(vec2<f32>(x_404.x, x_404.y)) * vec2<f32>(x_407.x, x_407.y)) + vec2<f32>(x_410.y, x_410.w));
    let x_413 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
    let x_416 : f32 = u_xlat22.x;
    u_xlat7.x = x_416;
    let x_419 : f32 = u_xlat5.x;
    u_xlat7.y = x_419;
    let x_422 : f32 = u_xlat3.x;
    u_xlat7.z = x_422;
    let x_425 : f32 = u_xlat6.x;
    u_xlat7.w = x_425;
    let x_427 : vec4<f32> = u_xlat7;
    u_xlat7 = (x_427 * vec4<f32>(0.44444000720977783203f, 0.44444000720977783203f, 0.44444000720977783203f, 0.22222000360488891602f));
    let x_433 : f32 = u_xlat22.y;
    u_xlat6.x = x_433;
    let x_436 : f32 = u_xlat5.z;
    u_xlat6.y = x_436;
    let x_439 : f32 = u_xlat3.y;
    u_xlat6.z = x_439;
    let x_441 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_441 * vec4<f32>(0.44444000720977783203f, 0.44444000720977783203f, 0.44444000720977783203f, 0.22222000360488891602f));
    let x_443 : vec4<f32> = u_xlat7;
    let x_445 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec4<f32>(x_443.y, x_443.w, x_443.y, x_443.w) + vec4<f32>(x_445.x, x_445.z, x_445.x, x_445.z));
    let x_449 : vec4<f32> = u_xlat5;
    let x_451 : vec4<f32> = u_xlat5;
    u_xlat8 = (vec4<f32>(x_449.y, x_449.y, x_449.w, x_449.w) + vec4<f32>(x_451.x, x_451.x, x_451.z, x_451.z));
    let x_454 : vec4<f32> = u_xlat7;
    let x_456 : vec4<f32> = u_xlat6;
    let x_458 : vec2<f32> = (vec2<f32>(x_454.y, x_454.w) / vec2<f32>(x_456.z, x_456.w));
    let x_459 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
    let x_461 : vec4<f32> = u_xlat3;
    let x_465 : vec2<f32> = (vec2<f32>(x_461.x, x_461.y) + vec2<f32>(-1.5f, 0.5f));
    let x_466 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
    let x_468 : vec4<f32> = u_xlat5;
    let x_470 : vec4<f32> = u_xlat8;
    u_xlat22 = (vec2<f32>(x_468.y, x_468.w) / vec2<f32>(x_470.y, x_470.w));
    let x_473 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_473 + vec2<f32>(-1.5f, 0.5f));
    let x_475 : vec4<f32> = u_xlat3;
    let x_478 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_480 : vec2<f32> = (vec2<f32>(x_475.x, x_475.y) * vec2<f32>(x_478.x, x_478.x));
    let x_481 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
    let x_483 : vec2<f32> = u_xlat22;
    let x_485 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_487 : vec2<f32> = (x_483 * vec2<f32>(x_485.y, x_485.y));
    let x_488 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_488.x, x_488.y, x_487.x, x_487.y);
    let x_490 : vec4<f32> = u_xlat6;
    let x_491 : vec4<f32> = u_xlat8;
    u_xlat6 = (x_490 * x_491);
    let x_493 : vec4<f32> = u_xlat4;
    let x_496 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_499 : vec4<f32> = u_xlat5;
    u_xlat7 = ((vec4<f32>(x_493.x, x_493.y, x_493.x, x_493.y) * vec4<f32>(x_496.x, x_496.y, x_496.x, x_496.y)) + vec4<f32>(x_499.x, x_499.z, x_499.y, x_499.z));
    let x_504 : vec4<f32> = u_xlat7;
    let x_505 : vec2<f32> = vec2<f32>(x_504.x, x_504.y);
    let x_507 : f32 = u_xlat3.z;
    txVec0 = vec3<f32>(x_505.x, x_505.y, x_507);
    let x_519 : vec3<f32> = txVec0;
    let x_521 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_519.xy, x_519.z);
    u_xlat28 = x_521;
    let x_523 : vec4<f32> = u_xlat7;
    let x_524 : vec2<f32> = vec2<f32>(x_523.z, x_523.w);
    let x_526 : f32 = u_xlat3.z;
    txVec1 = vec3<f32>(x_524.x, x_524.y, x_526);
    let x_533 : vec3<f32> = txVec1;
    let x_535 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_533.xy, x_533.z);
    u_xlat20 = x_535;
    let x_536 : f32 = u_xlat20;
    let x_538 : f32 = u_xlat6.y;
    u_xlat20 = (x_536 * x_538);
    let x_541 : f32 = u_xlat6.x;
    let x_542 : f32 = u_xlat28;
    let x_544 : f32 = u_xlat20;
    u_xlat28 = ((x_541 * x_542) + x_544);
    let x_546 : vec4<f32> = u_xlat4;
    let x_549 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_552 : vec4<f32> = u_xlat5;
    u_xlat4 = ((vec4<f32>(x_546.x, x_546.y, x_546.x, x_546.y) * vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y)) + vec4<f32>(x_552.x, x_552.w, x_552.y, x_552.w));
    let x_556 : vec4<f32> = u_xlat4;
    let x_557 : vec2<f32> = vec2<f32>(x_556.x, x_556.y);
    let x_559 : f32 = u_xlat3.z;
    txVec2 = vec3<f32>(x_557.x, x_557.y, x_559);
    let x_566 : vec3<f32> = txVec2;
    let x_568 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_566.xy, x_566.z);
    u_xlat20 = x_568;
    let x_570 : f32 = u_xlat6.z;
    let x_571 : f32 = u_xlat20;
    let x_573 : f32 = u_xlat28;
    u_xlat28 = ((x_570 * x_571) + x_573);
    let x_576 : vec4<f32> = u_xlat4;
    let x_577 : vec2<f32> = vec2<f32>(x_576.z, x_576.w);
    let x_579 : f32 = u_xlat3.z;
    txVec3 = vec3<f32>(x_577.x, x_577.y, x_579);
    let x_586 : vec3<f32> = txVec3;
    let x_588 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_586.xy, x_586.z);
    u_xlat20 = x_588;
    let x_590 : f32 = u_xlat6.w;
    let x_591 : f32 = u_xlat20;
    let x_593 : f32 = u_xlat28;
    u_xlat28 = ((x_590 * x_591) + x_593);
    let x_596 : f32 = x_17.x_LightShadowData.x;
    u_xlat20 = (-(x_596) + 1.0f);
    let x_599 : f32 = u_xlat28;
    let x_600 : f32 = u_xlat20;
    let x_603 : f32 = x_17.x_LightShadowData.x;
    u_xlat28 = ((x_599 * x_600) + x_603);
  } else {
    u_xlat28 = 1.0f;
  }
  let x_606 : f32 = u_xlat28;
  u_xlat20 = (-(x_606) + 1.0f);
  let x_610 : f32 = u_xlat0.x;
  let x_611 : f32 = u_xlat20;
  let x_613 : f32 = u_xlat28;
  u_xlat0.x = ((x_610 * x_611) + x_613);
  let x_617 : f32 = u_xlat0.x;
  let x_618 : f32 = u_xlat19;
  u_xlat0.x = (x_617 * x_618);
  let x_621 : vec3<f32> = u_xlat0;
  let x_625 : vec4<f32> = x_17.x_LightColor;
  let x_627 : vec3<f32> = (vec3<f32>(x_621.x, x_621.x, x_621.x) * vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_635 : vec3<f32> = u_xlat1;
  let x_637 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_635.x, x_635.y));
  let x_638 : vec3<f32> = vec3<f32>(x_637.x, x_637.y, x_637.z);
  let x_639 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_646 : vec3<f32> = u_xlat1;
  let x_648 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_646.x, x_646.y));
  u_xlat5 = x_648;
  let x_654 : vec3<f32> = u_xlat1;
  let x_656 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_654.x, x_654.y));
  u_xlat1 = vec3<f32>(x_656.x, x_656.y, x_656.z);
  let x_658 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_658 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_665 : vec3<f32> = u_xlat1;
  let x_666 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_665, x_666);
  let x_670 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_670);
  let x_673 : vec3<f32> = u_xlat0;
  let x_675 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_673.x, x_673.x, x_673.x) * x_675);
  let x_677 : vec4<f32> = u_xlat2;
  let x_681 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_683 : vec3<f32> = (vec3<f32>(x_677.x, x_677.y, x_677.w) + -(x_681));
  let x_684 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = u_xlat2;
  let x_688 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_686.x, x_686.y, x_686.z), vec3<f32>(x_688.x, x_688.y, x_688.z));
  let x_693 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_693);
  let x_696 : vec3<f32> = u_xlat0;
  let x_698 : vec4<f32> = u_xlat2;
  let x_700 : vec3<f32> = (vec3<f32>(x_696.x, x_696.x, x_696.x) * vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat2;
  let x_706 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(-(vec3<f32>(x_703.x, x_703.y, x_703.z)), x_706);
  let x_710 : f32 = u_xlat0.x;
  let x_712 : f32 = u_xlat0.x;
  u_xlat0.x = (x_710 + x_712);
  let x_715 : vec3<f32> = u_xlat1;
  let x_716 : vec3<f32> = u_xlat0;
  let x_720 : vec4<f32> = u_xlat2;
  let x_723 : vec3<f32> = ((x_715 * -(vec3<f32>(x_716.x, x_716.x, x_716.x))) + -(vec3<f32>(x_720.x, x_720.y, x_720.z)));
  let x_724 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : vec3<f32> = u_xlat1;
  let x_727 : vec3<f32> = u_xlat9;
  u_xlat0.x = dot(x_726, x_727);
  let x_731 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_731, 0.0f, 1.0f);
  let x_734 : vec4<f32> = u_xlat2;
  let x_736 : vec3<f32> = u_xlat9;
  u_xlat9.x = dot(vec3<f32>(x_734.x, x_734.y, x_734.z), x_736);
  let x_740 : f32 = u_xlat9.x;
  let x_742 : f32 = u_xlat9.x;
  u_xlat9.x = (x_740 * x_742);
  let x_746 : f32 = u_xlat9.x;
  let x_748 : f32 = u_xlat9.x;
  u_xlat1.x = (x_746 * x_748);
  let x_752 : f32 = u_xlat5.w;
  u_xlat1.y = (-(x_752) + 1.0f);
  let x_761 : vec3<f32> = u_xlat1;
  let x_763 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_761.x, x_761.y));
  u_xlat9.x = x_763.x;
  let x_767 : f32 = u_xlat9.x;
  u_xlat9.x = (x_767 * 16.0f);
  let x_771 : vec3<f32> = u_xlat9;
  let x_773 : vec4<f32> = u_xlat5;
  let x_776 : vec4<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_771.x, x_771.x, x_771.x) * vec3<f32>(x_773.x, x_773.y, x_773.z)) + vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec3<f32> = u_xlat0;
  let x_781 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_779.x, x_779.x, x_779.x) * vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_786 : vec3<f32> = u_xlat9;
  let x_787 : vec3<f32> = u_xlat1;
  let x_788 : vec3<f32> = (x_786 * x_787);
  let x_789 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
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


