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

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

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
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat28 : f32;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb28 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat22 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
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
  u_xlatb28 = (x_285 < 0.99000001f);
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
    u_xlat7 = (x_427 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_433 : f32 = u_xlat22.y;
    u_xlat6.x = x_433;
    let x_436 : f32 = u_xlat5.z;
    u_xlat6.y = x_436;
    let x_439 : f32 = u_xlat3.y;
    u_xlat6.z = x_439;
    let x_441 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_441 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
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
    let x_503 : vec4<f32> = u_xlat7;
    let x_504 : vec2<f32> = vec2<f32>(x_503.x, x_503.y);
    let x_506 : f32 = u_xlat3.z;
    txVec0 = vec3<f32>(x_504.x, x_504.y, x_506);
    let x_518 : vec3<f32> = txVec0;
    let x_520 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_518.xy, x_518.z);
    u_xlat28 = x_520;
    let x_522 : vec4<f32> = u_xlat7;
    let x_523 : vec2<f32> = vec2<f32>(x_522.z, x_522.w);
    let x_525 : f32 = u_xlat3.z;
    txVec1 = vec3<f32>(x_523.x, x_523.y, x_525);
    let x_532 : vec3<f32> = txVec1;
    let x_534 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_532.xy, x_532.z);
    u_xlat20 = x_534;
    let x_535 : f32 = u_xlat20;
    let x_537 : f32 = u_xlat6.y;
    u_xlat20 = (x_535 * x_537);
    let x_540 : f32 = u_xlat6.x;
    let x_541 : f32 = u_xlat28;
    let x_543 : f32 = u_xlat20;
    u_xlat28 = ((x_540 * x_541) + x_543);
    let x_545 : vec4<f32> = u_xlat4;
    let x_548 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_551 : vec4<f32> = u_xlat5;
    u_xlat4 = ((vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y) * vec4<f32>(x_548.x, x_548.y, x_548.x, x_548.y)) + vec4<f32>(x_551.x, x_551.w, x_551.y, x_551.w));
    let x_555 : vec4<f32> = u_xlat4;
    let x_556 : vec2<f32> = vec2<f32>(x_555.x, x_555.y);
    let x_558 : f32 = u_xlat3.z;
    txVec2 = vec3<f32>(x_556.x, x_556.y, x_558);
    let x_565 : vec3<f32> = txVec2;
    let x_567 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_565.xy, x_565.z);
    u_xlat20 = x_567;
    let x_569 : f32 = u_xlat6.z;
    let x_570 : f32 = u_xlat20;
    let x_572 : f32 = u_xlat28;
    u_xlat28 = ((x_569 * x_570) + x_572);
    let x_575 : vec4<f32> = u_xlat4;
    let x_576 : vec2<f32> = vec2<f32>(x_575.z, x_575.w);
    let x_578 : f32 = u_xlat3.z;
    txVec3 = vec3<f32>(x_576.x, x_576.y, x_578);
    let x_585 : vec3<f32> = txVec3;
    let x_587 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_585.xy, x_585.z);
    u_xlat20 = x_587;
    let x_589 : f32 = u_xlat6.w;
    let x_590 : f32 = u_xlat20;
    let x_592 : f32 = u_xlat28;
    u_xlat28 = ((x_589 * x_590) + x_592);
    let x_595 : f32 = x_17.x_LightShadowData.x;
    u_xlat20 = (-(x_595) + 1.0f);
    let x_598 : f32 = u_xlat28;
    let x_599 : f32 = u_xlat20;
    let x_602 : f32 = x_17.x_LightShadowData.x;
    u_xlat28 = ((x_598 * x_599) + x_602);
  } else {
    u_xlat28 = 1.0f;
  }
  let x_605 : f32 = u_xlat28;
  u_xlat20 = (-(x_605) + 1.0f);
  let x_609 : f32 = u_xlat0.x;
  let x_610 : f32 = u_xlat20;
  let x_612 : f32 = u_xlat28;
  u_xlat0.x = ((x_609 * x_610) + x_612);
  let x_616 : f32 = u_xlat0.x;
  let x_617 : f32 = u_xlat19;
  u_xlat0.x = (x_616 * x_617);
  let x_620 : vec3<f32> = u_xlat0;
  let x_624 : vec4<f32> = x_17.x_LightColor;
  let x_626 : vec3<f32> = (vec3<f32>(x_620.x, x_620.x, x_620.x) * vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_627 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_634 : vec3<f32> = u_xlat1;
  let x_636 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_634.x, x_634.y));
  let x_637 : vec3<f32> = vec3<f32>(x_636.x, x_636.y, x_636.z);
  let x_638 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_645 : vec3<f32> = u_xlat1;
  let x_647 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_645.x, x_645.y));
  u_xlat5 = x_647;
  let x_653 : vec3<f32> = u_xlat1;
  let x_655 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_653.x, x_653.y));
  u_xlat1 = vec3<f32>(x_655.x, x_655.y, x_655.z);
  let x_657 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_657 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_664 : vec3<f32> = u_xlat1;
  let x_665 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_664, x_665);
  let x_669 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_669);
  let x_672 : vec3<f32> = u_xlat0;
  let x_674 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_672.x, x_672.x, x_672.x) * x_674);
  let x_676 : vec4<f32> = u_xlat2;
  let x_680 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_682 : vec3<f32> = (vec3<f32>(x_676.x, x_676.y, x_676.w) + -(x_680));
  let x_683 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat2;
  let x_687 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_685.x, x_685.y, x_685.z), vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_692 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_692);
  let x_695 : vec3<f32> = u_xlat0;
  let x_697 : vec4<f32> = u_xlat2;
  let x_699 : vec3<f32> = (vec3<f32>(x_695.x, x_695.x, x_695.x) * vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat2;
  let x_705 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(-(vec3<f32>(x_702.x, x_702.y, x_702.z)), x_705);
  let x_709 : f32 = u_xlat0.x;
  let x_711 : f32 = u_xlat0.x;
  u_xlat0.x = (x_709 + x_711);
  let x_714 : vec3<f32> = u_xlat1;
  let x_715 : vec3<f32> = u_xlat0;
  let x_719 : vec4<f32> = u_xlat2;
  let x_722 : vec3<f32> = ((x_714 * -(vec3<f32>(x_715.x, x_715.x, x_715.x))) + -(vec3<f32>(x_719.x, x_719.y, x_719.z)));
  let x_723 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec3<f32> = u_xlat1;
  let x_726 : vec3<f32> = u_xlat9;
  u_xlat0.x = dot(x_725, x_726);
  let x_730 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_730, 0.0f, 1.0f);
  let x_733 : vec4<f32> = u_xlat2;
  let x_735 : vec3<f32> = u_xlat9;
  u_xlat9.x = dot(vec3<f32>(x_733.x, x_733.y, x_733.z), x_735);
  let x_739 : f32 = u_xlat9.x;
  let x_741 : f32 = u_xlat9.x;
  u_xlat9.x = (x_739 * x_741);
  let x_745 : f32 = u_xlat9.x;
  let x_747 : f32 = u_xlat9.x;
  u_xlat1.x = (x_745 * x_747);
  let x_751 : f32 = u_xlat5.w;
  u_xlat1.y = (-(x_751) + 1.0f);
  let x_760 : vec3<f32> = u_xlat1;
  let x_762 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_760.x, x_760.y));
  u_xlat9.x = x_762.x;
  let x_766 : f32 = u_xlat9.x;
  u_xlat9.x = (x_766 * 16.0f);
  let x_770 : vec3<f32> = u_xlat9;
  let x_772 : vec4<f32> = u_xlat5;
  let x_775 : vec4<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_770.x, x_770.x, x_770.x) * vec3<f32>(x_772.x, x_772.y, x_772.z)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec3<f32> = u_xlat0;
  let x_780 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_778.x, x_778.x, x_778.x) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_785 : vec3<f32> = u_xlat9;
  let x_786 : vec3<f32> = u_xlat1;
  let x_787 : vec3<f32> = (x_785 * x_786);
  let x_788 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
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

