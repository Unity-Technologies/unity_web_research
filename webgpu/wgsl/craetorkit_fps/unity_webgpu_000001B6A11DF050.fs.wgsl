type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_21 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(9) var sampler_Gradient : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : bool;
  var u_xlat9 : vec3<f32>;
  var x_261 : vec3<f32>;
  var u_xlat24 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_26 : vec4<f32> = x_21.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_31 : vec3<f32> = u_xlat0;
  let x_32 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_31, x_32);
  let x_34 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat21;
  let x_39 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_37, x_37, x_37) * x_39);
  let x_43 : vec3<f32> = vs_TEXCOORD2;
  let x_48 : vec3<f32> = x_21.x_WorldSpaceCameraPos;
  let x_49 : vec3<f32> = (-(x_43) + x_48);
  let x_50 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_58);
  let x_61 : f32 = u_xlat22;
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_61, x_61, x_61) * vec3<f32>(x_63.x, x_63.y, x_63.z));
  let x_68 : f32 = vs_TEXCOORD3;
  u_xlat22 = (x_68 + -1.0f);
  let x_71 : f32 = u_xlat22;
  u_xlat22 = (x_71 * -9.999998093f);
  let x_74 : f32 = u_xlat22;
  u_xlat22 = clamp(x_74, 0.0f, 1.0f);
  let x_79 : f32 = u_xlat22;
  let x_85 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : vec2<f32> = (-(vec2<f32>(x_79, x_79)) + x_85);
  let x_87 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_86.x, x_86.y, x_87.z, x_87.w);
  let x_99 : vec4<f32> = u_xlat4;
  let x_101 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_99.x, x_99.y));
  u_xlat22 = x_101.x;
  let x_108 : vec2<f32> = vs_TEXCOORD0;
  let x_109 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_108);
  u_xlat23 = x_109.z;
  let x_112 : f32 = u_xlat22;
  u_xlat22 = ((x_112 * -2.0f) + 1.0f);
  let x_116 : f32 = u_xlat23;
  let x_118 : f32 = u_xlat22;
  u_xlat22 = (-(x_116) + x_118);
  let x_123 : f32 = u_xlat22;
  u_xlatb22 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb22;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_138);
  let x_141 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_142 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_141 * vec4<f32>(x_142.x, x_142.x, x_142.x, x_142.x)) + x_145);
  let x_148 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_149 : vec3<f32> = vs_TEXCOORD2;
  let x_152 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_148 * vec4<f32>(x_149.z, x_149.z, x_149.z, x_149.z)) + x_152);
  let x_154 : vec4<f32> = u_xlat4;
  let x_157 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat4 = (x_154 + x_157);
  let x_163 : f32 = x_21.unity_MatrixV[0i].z;
  u_xlat5.x = x_163;
  let x_166 : f32 = x_21.unity_MatrixV[1i].z;
  u_xlat5.y = x_166;
  let x_170 : f32 = x_21.unity_MatrixV[2i].z;
  u_xlat5.z = x_170;
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_172.x, x_172.y, x_172.z), vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec3<f32> = vs_TEXCOORD2;
  let x_180 : vec4<f32> = x_21.unity_ShadowFadeCenterAndType;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat2;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_186.x, x_186.y, x_186.z), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_193 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_193);
  let x_196 : f32 = u_xlat22;
  let x_199 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_196) + x_199);
  let x_204 : f32 = x_21.unity_ShadowFadeCenterAndType.w;
  let x_206 : f32 = u_xlat2.x;
  let x_208 : f32 = u_xlat22;
  u_xlat22 = ((x_204 * x_206) + x_208);
  let x_210 : f32 = u_xlat22;
  let x_213 : f32 = x_21.x_LightShadowData.z;
  let x_216 : f32 = x_21.x_LightShadowData.w;
  u_xlat22 = ((x_210 * x_213) + x_216);
  let x_218 : f32 = u_xlat22;
  u_xlat22 = clamp(x_218, 0.0f, 1.0f);
  let x_223 : f32 = x_21.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_223 == 1.0f);
  let x_225 : bool = u_xlatb2;
  if (x_225) {
    let x_229 : f32 = x_21.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_229 == 1.0f);
    let x_232 : vec3<f32> = vs_TEXCOORD2;
    let x_236 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[1i];
    u_xlat9 = (vec3<f32>(x_232.y, x_232.y, x_232.y) * vec3<f32>(x_236.x, x_236.y, x_236.z));
    let x_240 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[0i];
    let x_242 : vec3<f32> = vs_TEXCOORD2;
    let x_245 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_242.x, x_242.x, x_242.x)) + x_245);
    let x_248 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[2i];
    let x_250 : vec3<f32> = vs_TEXCOORD2;
    let x_253 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.z, x_250.z, x_250.z)) + x_253);
    let x_255 : vec3<f32> = u_xlat9;
    let x_257 : vec4<f32> = x_21.unity_ProbeVolumeWorldToObject[3i];
    u_xlat9 = (x_255 + vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_260 : bool = u_xlatb2;
    if (x_260) {
      let x_264 : vec3<f32> = u_xlat9;
      x_261 = x_264;
    } else {
      let x_266 : vec3<f32> = vs_TEXCOORD2;
      x_261 = x_266;
    }
    let x_267 : vec3<f32> = x_261;
    let x_268 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
    let x_270 : vec4<f32> = u_xlat2;
    let x_274 : vec3<f32> = x_21.unity_ProbeVolumeMin;
    let x_276 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.z) + -(x_274));
    let x_277 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat2;
    let x_283 : vec3<f32> = x_21.unity_ProbeVolumeSizeInv;
    let x_284 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) * x_283);
    let x_285 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_285.x, x_284.x, x_284.y, x_284.z);
    let x_288 : f32 = u_xlat2.y;
    u_xlat9.x = ((x_288 * 0.25f) + 0.75f);
    let x_296 : f32 = x_21.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_296 * 0.5f) + 0.75f);
    let x_301 : f32 = u_xlat9.x;
    let x_302 : f32 = u_xlat24;
    u_xlat2.x = max(x_301, x_302);
    let x_313 : vec4<f32> = u_xlat2;
    let x_315 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_313.x, x_313.z, x_313.w));
    u_xlat2 = x_315;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec4<f32> = x_21.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_321, x_323);
  let x_327 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_327, 0.0f, 1.0f);
  let x_330 : vec3<f32> = vs_TEXCOORD2;
  let x_334 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat5 = (vec4<f32>(x_330.y, x_330.y, x_330.y, x_330.y) * x_334);
  let x_337 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_338 : vec3<f32> = vs_TEXCOORD2;
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_337 * vec4<f32>(x_338.x, x_338.x, x_338.x, x_338.x)) + x_341);
  let x_344 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_345 : vec3<f32> = vs_TEXCOORD2;
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_344 * vec4<f32>(x_345.z, x_345.z, x_345.z, x_345.z)) + x_348);
  let x_350 : vec4<f32> = u_xlat5;
  let x_352 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat5 = (x_350 + x_352);
  let x_354 : vec4<f32> = u_xlat5;
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_354.x, x_354.y, x_354.z) / vec3<f32>(x_356.w, x_356.w, x_356.w));
  let x_360 : vec3<f32> = u_xlat9;
  let x_361 : vec2<f32> = vec2<f32>(x_360.x, x_360.y);
  let x_363 : f32 = u_xlat9.z;
  txVec0 = vec3<f32>(x_361.x, x_361.y, x_363);
  let x_375 : vec3<f32> = txVec0;
  let x_377 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_375.xy, x_375.z);
  u_xlat9.x = x_377;
  let x_381 : f32 = x_21.x_LightShadowData.x;
  u_xlat16 = (-(x_381) + 1.0f);
  let x_385 : f32 = u_xlat9.x;
  let x_386 : f32 = u_xlat16;
  let x_389 : f32 = x_21.x_LightShadowData.x;
  u_xlat9.x = ((x_385 * x_386) + x_389);
  let x_393 : f32 = u_xlat9.x;
  let x_396 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_393) + x_396);
  let x_399 : f32 = u_xlat22;
  let x_401 : f32 = u_xlat2.x;
  let x_404 : f32 = u_xlat9.x;
  u_xlat22 = ((x_399 * x_401) + x_404);
  let x_407 : f32 = u_xlat4.z;
  u_xlatb2 = (0.0f < x_407);
  let x_409 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_409);
  let x_412 : vec4<f32> = u_xlat4;
  let x_414 : vec4<f32> = u_xlat4;
  let x_416 : vec2<f32> = (vec2<f32>(x_412.x, x_412.y) / vec2<f32>(x_414.w, x_414.w));
  let x_417 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_416.x, x_416.y, x_417.z);
  let x_419 : vec3<f32> = u_xlat9;
  let x_422 : vec2<f32> = (vec2<f32>(x_419.x, x_419.y) + vec2<f32>(0.5f, 0.5f));
  let x_423 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_422.x, x_422.y, x_423.z);
  let x_430 : vec3<f32> = u_xlat9;
  let x_432 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_430.x, x_430.y));
  u_xlat9.x = x_432.w;
  let x_436 : f32 = u_xlat9.x;
  let x_438 : f32 = u_xlat2.x;
  u_xlat2.x = (x_436 * x_438);
  let x_441 : vec4<f32> = u_xlat4;
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_441.x, x_441.y, x_441.z), vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_452 : vec3<f32> = u_xlat9;
  let x_454 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_452.x, x_452.x));
  u_xlat9.x = x_454.x;
  let x_458 : f32 = u_xlat9.x;
  let x_460 : f32 = u_xlat2.x;
  u_xlat2.x = (x_458 * x_460);
  let x_463 : f32 = u_xlat22;
  let x_465 : f32 = u_xlat2.x;
  u_xlat22 = (x_463 * x_465);
  let x_467 : f32 = u_xlat22;
  let x_471 : vec4<f32> = x_21.x_LightColor0;
  let x_473 : vec3<f32> = (vec3<f32>(x_467, x_467, x_467) * vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_477 : vec3<f32> = vs_TEXCOORD1;
  let x_478 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_477, x_478);
  let x_480 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_480);
  let x_482 : f32 = u_xlat22;
  let x_484 : vec3<f32> = vs_TEXCOORD1;
  let x_485 : vec3<f32> = (vec3<f32>(x_482, x_482, x_482) * x_484);
  let x_486 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
  let x_490 : vec4<f32> = x_21.x_Color;
  let x_494 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_495 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_499 : f32 = x_21.x_Metallic;
  let x_501 : f32 = x_21.x_Metallic;
  let x_503 : f32 = x_21.x_Metallic;
  let x_504 : vec3<f32> = vec3<f32>(x_499, x_501, x_503);
  let x_509 : vec4<f32> = u_xlat5;
  let x_514 : vec3<f32> = ((vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(x_509.x, x_509.y, x_509.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_515 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : f32 = x_21.x_Metallic;
  u_xlat22 = ((-(x_518) * 0.959999979f) + 0.959999979f);
  let x_524 : f32 = u_xlat22;
  let x_527 : vec4<f32> = x_21.x_Color;
  u_xlat6 = (vec3<f32>(x_524, x_524, x_524) * vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_532 : f32 = x_21.x_Glossiness;
  u_xlat22 = (-(x_532) + 1.0f);
  let x_535 : vec3<f32> = u_xlat0;
  let x_536 : f32 = u_xlat21;
  let x_539 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_535 * vec3<f32>(x_536, x_536, x_536)) + x_539);
  let x_541 : vec3<f32> = u_xlat0;
  let x_542 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_541, x_542);
  let x_544 : f32 = u_xlat21;
  u_xlat21 = max(x_544, 0.001f);
  let x_547 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_547);
  let x_549 : f32 = u_xlat21;
  let x_551 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_549, x_549, x_549) * x_551);
  let x_553 : vec4<f32> = u_xlat4;
  let x_555 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_553.x, x_553.y, x_553.z), x_555);
  let x_557 : vec4<f32> = u_xlat4;
  let x_559 : vec3<f32> = u_xlat1;
  u_xlat23 = dot(vec3<f32>(x_557.x, x_557.y, x_557.z), x_559);
  let x_561 : f32 = u_xlat23;
  u_xlat23 = clamp(x_561, 0.0f, 1.0f);
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(vec3<f32>(x_563.x, x_563.y, x_563.z), x_565);
  let x_569 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_569, 0.0f, 1.0f);
  let x_572 : vec3<f32> = u_xlat1;
  let x_573 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_572, x_573);
  let x_577 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_577, 0.0f, 1.0f);
  let x_582 : f32 = u_xlat0.x;
  let x_584 : f32 = u_xlat0.x;
  u_xlat7.x = (x_582 * x_584);
  let x_587 : vec3<f32> = u_xlat7;
  let x_589 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_587.x, x_587.x), vec2<f32>(x_589, x_589));
  let x_594 : f32 = u_xlat7.x;
  u_xlat7.x = (x_594 + -0.5f);
  let x_599 : f32 = u_xlat23;
  u_xlat14 = (-(x_599) + 1.0f);
  let x_602 : f32 = u_xlat14;
  let x_603 : f32 = u_xlat14;
  u_xlat1.x = (x_602 * x_603);
  let x_607 : f32 = u_xlat1.x;
  let x_609 : f32 = u_xlat1.x;
  u_xlat1.x = (x_607 * x_609);
  let x_612 : f32 = u_xlat14;
  let x_614 : f32 = u_xlat1.x;
  u_xlat14 = (x_612 * x_614);
  let x_617 : f32 = u_xlat7.x;
  let x_618 : f32 = u_xlat14;
  u_xlat14 = ((x_617 * x_618) + 1.0f);
  let x_621 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_621)) + 1.0f);
  let x_628 : f32 = u_xlat1.x;
  let x_630 : f32 = u_xlat1.x;
  u_xlat8 = (x_628 * x_630);
  let x_632 : f32 = u_xlat8;
  let x_633 : f32 = u_xlat8;
  u_xlat8 = (x_632 * x_633);
  let x_636 : f32 = u_xlat1.x;
  let x_637 : f32 = u_xlat8;
  u_xlat1.x = (x_636 * x_637);
  let x_641 : f32 = u_xlat7.x;
  let x_643 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_641 * x_643) + 1.0f);
  let x_648 : f32 = u_xlat7.x;
  let x_649 : f32 = u_xlat14;
  u_xlat7.x = (x_648 * x_649);
  let x_652 : f32 = u_xlat22;
  let x_653 : f32 = u_xlat22;
  u_xlat14 = (x_652 * x_653);
  let x_655 : f32 = u_xlat14;
  u_xlat14 = max(x_655, 0.002f);
  let x_658 : f32 = u_xlat14;
  u_xlat1.x = (-(x_658) + 1.0f);
  let x_662 : f32 = u_xlat21;
  let x_665 : f32 = u_xlat1.x;
  let x_667 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_662) * x_665) + x_667);
  let x_669 : f32 = u_xlat23;
  let x_671 : f32 = u_xlat1.x;
  let x_673 : f32 = u_xlat14;
  u_xlat1.x = ((x_669 * x_671) + x_673);
  let x_676 : f32 = u_xlat21;
  let x_679 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_676) * x_679);
  let x_681 : f32 = u_xlat23;
  let x_682 : f32 = u_xlat8;
  let x_684 : f32 = u_xlat21;
  u_xlat21 = ((x_681 * x_682) + x_684);
  let x_686 : f32 = u_xlat21;
  u_xlat21 = (x_686 + 0.00001f);
  let x_689 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_689);
  let x_691 : f32 = u_xlat14;
  let x_692 : f32 = u_xlat14;
  u_xlat14 = (x_691 * x_692);
  let x_695 : f32 = u_xlat3.x;
  let x_696 : f32 = u_xlat14;
  let x_699 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_695 * x_696) + -(x_699));
  let x_704 : f32 = u_xlat1.x;
  let x_706 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_704 * x_706) + 1.0f);
  let x_710 : f32 = u_xlat14;
  u_xlat14 = (x_710 * 0.318309873f);
  let x_714 : f32 = u_xlat1.x;
  let x_716 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_714 * x_716) + 0.0000001f);
  let x_721 : f32 = u_xlat14;
  let x_723 : f32 = u_xlat1.x;
  u_xlat14 = (x_721 / x_723);
  let x_725 : f32 = u_xlat14;
  let x_726 : f32 = u_xlat21;
  u_xlat7.y = (x_725 * x_726);
  let x_729 : f32 = u_xlat23;
  let x_731 : vec3<f32> = u_xlat7;
  let x_733 : vec2<f32> = (vec2<f32>(x_729, x_729) * vec2<f32>(x_731.x, x_731.y));
  let x_734 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_733.x, x_733.y, x_734.z);
  let x_737 : f32 = u_xlat7.y;
  u_xlat14 = (x_737 * 3.141592741f);
  let x_740 : f32 = u_xlat14;
  u_xlat14 = max(x_740, 0.0f);
  let x_742 : vec4<f32> = u_xlat5;
  let x_744 : vec4<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_748 : f32 = u_xlat21;
  u_xlatb21 = !((x_748 == 0.0f));
  let x_750 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_750);
  let x_752 : f32 = u_xlat21;
  let x_753 : f32 = u_xlat14;
  u_xlat14 = (x_752 * x_753);
  let x_755 : vec3<f32> = u_xlat7;
  let x_757 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_755.x, x_755.x, x_755.x) * vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat2;
  let x_762 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762, x_762, x_762));
  let x_766 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_766) + 1.0f);
  let x_771 : f32 = u_xlat0.x;
  let x_773 : f32 = u_xlat0.x;
  u_xlat22 = (x_771 * x_773);
  let x_775 : f32 = u_xlat22;
  let x_776 : f32 = u_xlat22;
  u_xlat22 = (x_775 * x_776);
  let x_779 : f32 = u_xlat0.x;
  let x_780 : f32 = u_xlat22;
  u_xlat0.x = (x_779 * x_780);
  let x_783 : vec4<f32> = u_xlat5;
  let x_787 : vec3<f32> = (-(vec3<f32>(x_783.x, x_783.y, x_783.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_788 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat2;
  let x_792 : vec3<f32> = u_xlat0;
  let x_795 : vec4<f32> = u_xlat5;
  let x_797 : vec3<f32> = ((vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(x_792.x, x_792.x, x_792.x)) + vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_798 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec3<f32> = u_xlat7;
  let x_801 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_800 * vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec3<f32> = u_xlat6;
  let x_805 : vec3<f32> = u_xlat1;
  let x_807 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_804 * x_805) + x_807);
  let x_810 : f32 = vs_TEXCOORD6;
  let x_812 : f32 = x_21.x_ProjectionParams.y;
  u_xlat21 = (x_810 / x_812);
  let x_814 : f32 = u_xlat21;
  u_xlat21 = (-(x_814) + 1.0f);
  let x_817 : f32 = u_xlat21;
  let x_819 : f32 = x_21.x_ProjectionParams.z;
  u_xlat21 = (x_817 * x_819);
  let x_821 : f32 = u_xlat21;
  u_xlat21 = max(x_821, 0.0f);
  let x_823 : f32 = u_xlat21;
  let x_826 : f32 = x_21.unity_FogParams.x;
  u_xlat21 = (x_823 * x_826);
  let x_828 : f32 = u_xlat21;
  let x_829 : f32 = u_xlat21;
  u_xlat21 = (x_828 * -(x_829));
  let x_832 : f32 = u_xlat21;
  u_xlat21 = exp2(x_832);
  let x_836 : vec3<f32> = u_xlat0;
  let x_837 : f32 = u_xlat21;
  let x_839 : vec3<f32> = (x_836 * vec3<f32>(x_837, x_837, x_837));
  let x_840 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

