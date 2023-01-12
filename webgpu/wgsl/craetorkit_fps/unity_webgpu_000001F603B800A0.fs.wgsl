type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_36 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_264 : vec3<f32>;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_41 : vec4<f32> = x_36.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_41.x, x_41.y, x_41.z));
  let x_45 : vec4<f32> = x_36.x_Color;
  let x_47 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * x_47) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_55 : f32 = x_36.x_Metallic;
  let x_57 : f32 = x_36.x_Metallic;
  let x_59 : f32 = x_36.x_Metallic;
  let x_60 : vec3<f32> = vec3<f32>(x_55, x_57, x_59);
  let x_65 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * x_65) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : f32 = x_36.x_Metallic;
  u_xlat21 = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_78 : f32 = u_xlat21;
  let x_80 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_78, x_78, x_78) * x_80);
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  let x_85 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_88);
  let x_92 : f32 = u_xlat21;
  let x_94 : vec4<f32> = vs_TEXCOORD4;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec4<f32> = vs_TEXCOORD1;
  let x_102 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_100.x, x_100.y, x_100.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_105);
  let x_108 : f32 = u_xlat21;
  let x_110 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_108, x_108, x_108) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_116 : vec3<f32> = vs_TEXCOORD5;
  let x_121 : vec4<f32> = x_36.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_116.y, x_116.y, x_116.y, x_116.y) * x_121);
  let x_125 : vec4<f32> = x_36.unity_WorldToLight[0i];
  let x_126 : vec3<f32> = vs_TEXCOORD5;
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_125 * vec4<f32>(x_126.x, x_126.x, x_126.x, x_126.x)) + x_129);
  let x_133 : vec4<f32> = x_36.unity_WorldToLight[2i];
  let x_134 : vec3<f32> = vs_TEXCOORD5;
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_133 * vec4<f32>(x_134.z, x_134.z, x_134.z, x_134.z)) + x_137);
  let x_139 : vec4<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_36.unity_WorldToLight[3i];
  u_xlat4 = (x_139 + x_142);
  let x_145 : vec3<f32> = vs_TEXCOORD5;
  let x_149 : vec3<f32> = x_36.x_WorldSpaceCameraPos;
  let x_150 : vec3<f32> = (-(x_145) + x_149);
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_157 : f32 = x_36.unity_MatrixV[0i].z;
  u_xlat6.x = x_157;
  let x_161 : f32 = x_36.unity_MatrixV[1i].z;
  u_xlat6.y = x_161;
  let x_165 : f32 = x_36.unity_MatrixV[2i].z;
  u_xlat6.z = x_165;
  let x_167 : vec4<f32> = u_xlat5;
  let x_169 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), x_169);
  let x_171 : vec3<f32> = vs_TEXCOORD5;
  let x_174 : vec4<f32> = x_36.unity_ShadowFadeCenterAndType;
  let x_177 : vec3<f32> = (x_171 + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_178 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : vec4<f32> = u_xlat5;
  let x_183 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_186);
  let x_188 : f32 = u_xlat21;
  let x_190 : f32 = u_xlat22;
  u_xlat22 = (-(x_188) + x_190);
  let x_194 : f32 = x_36.unity_ShadowFadeCenterAndType.w;
  let x_195 : f32 = u_xlat22;
  let x_197 : f32 = u_xlat21;
  u_xlat21 = ((x_194 * x_195) + x_197);
  let x_199 : f32 = u_xlat21;
  let x_202 : f32 = x_36.x_LightShadowData.z;
  let x_205 : f32 = x_36.x_LightShadowData.w;
  u_xlat21 = ((x_199 * x_202) + x_205);
  let x_207 : f32 = u_xlat21;
  u_xlat21 = clamp(x_207, 0.0f, 1.0f);
  let x_216 : f32 = x_36.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_216 == 1.0f);
  let x_218 : bool = u_xlatb22;
  if (x_218) {
    let x_222 : f32 = x_36.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_222 == 1.0f);
    let x_224 : vec3<f32> = vs_TEXCOORD5;
    let x_228 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[1i];
    let x_230 : vec3<f32> = (vec3<f32>(x_224.y, x_224.y, x_224.y) * vec3<f32>(x_228.x, x_228.y, x_228.z));
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_234 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[0i];
    let x_236 : vec3<f32> = vs_TEXCOORD5;
    let x_239 : vec4<f32> = u_xlat5;
    let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + vec3<f32>(x_239.x, x_239.y, x_239.z));
    let x_242 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_245 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[2i];
    let x_247 : vec3<f32> = vs_TEXCOORD5;
    let x_250 : vec4<f32> = u_xlat5;
    let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.z, x_247.z, x_247.z)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
    let x_253 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat5;
    let x_258 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[3i];
    let x_260 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_258.x, x_258.y, x_258.z));
    let x_261 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
    let x_263 : bool = u_xlatb22;
    if (x_263) {
      let x_267 : vec4<f32> = u_xlat5;
      x_264 = vec3<f32>(x_267.x, x_267.y, x_267.z);
    } else {
      let x_270 : vec3<f32> = vs_TEXCOORD5;
      x_264 = x_270;
    }
    let x_271 : vec3<f32> = x_264;
    let x_272 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
    let x_274 : vec4<f32> = u_xlat5;
    let x_278 : vec3<f32> = x_36.unity_ProbeVolumeMin;
    let x_280 : vec3<f32> = (vec3<f32>(x_274.x, x_274.y, x_274.z) + -(x_278));
    let x_281 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
    let x_283 : vec4<f32> = u_xlat5;
    let x_287 : vec3<f32> = x_36.unity_ProbeVolumeSizeInv;
    let x_288 : vec3<f32> = (vec3<f32>(x_283.x, x_283.y, x_283.z) * x_287);
    let x_289 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_289.x, x_288.x, x_288.y, x_288.z);
    let x_292 : f32 = u_xlat5.y;
    u_xlat22 = ((x_292 * 0.25f) + 0.75f);
    let x_299 : f32 = x_36.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_299 * 0.5f) + 0.75f);
    let x_303 : f32 = u_xlat22;
    let x_304 : f32 = u_xlat23;
    u_xlat5.x = max(x_303, x_304);
    let x_315 : vec4<f32> = u_xlat5;
    let x_317 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_315.x, x_315.z, x_315.w));
    u_xlat5 = x_317;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_323 : vec4<f32> = u_xlat5;
  let x_325 : vec4<f32> = x_36.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_323, x_325);
  let x_327 : f32 = u_xlat22;
  u_xlat22 = clamp(x_327, 0.0f, 1.0f);
  let x_329 : vec3<f32> = vs_TEXCOORD5;
  let x_332 : vec4<f32> = x_36.unity_WorldToShadow[0i][1i];
  u_xlat5 = (vec4<f32>(x_329.y, x_329.y, x_329.y, x_329.y) * x_332);
  let x_335 : vec4<f32> = x_36.unity_WorldToShadow[0i][0i];
  let x_336 : vec3<f32> = vs_TEXCOORD5;
  let x_339 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_335 * vec4<f32>(x_336.x, x_336.x, x_336.x, x_336.x)) + x_339);
  let x_342 : vec4<f32> = x_36.unity_WorldToShadow[0i][2i];
  let x_343 : vec3<f32> = vs_TEXCOORD5;
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_342 * vec4<f32>(x_343.z, x_343.z, x_343.z, x_343.z)) + x_346);
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec4<f32> = x_36.unity_WorldToShadow[0i][3i];
  u_xlat5 = (x_348 + x_350);
  let x_352 : vec4<f32> = u_xlat5;
  let x_354 : vec4<f32> = u_xlat5;
  let x_356 : vec3<f32> = (vec3<f32>(x_352.x, x_352.y, x_352.z) / vec3<f32>(x_354.w, x_354.w, x_354.w));
  let x_357 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : vec4<f32> = u_xlat5;
  let x_361 : vec2<f32> = vec2<f32>(x_360.x, x_360.y);
  let x_363 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_361.x, x_361.y, x_363);
  let x_375 : vec3<f32> = txVec0;
  let x_377 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_375.xy, x_375.z);
  u_xlat23 = x_377;
  let x_380 : f32 = x_36.x_LightShadowData.x;
  u_xlat24 = (-(x_380) + 1.0f);
  let x_383 : f32 = u_xlat23;
  let x_384 : f32 = u_xlat24;
  let x_387 : f32 = x_36.x_LightShadowData.x;
  u_xlat23 = ((x_383 * x_384) + x_387);
  let x_389 : f32 = u_xlat22;
  let x_390 : f32 = u_xlat23;
  u_xlat22 = (x_389 + -(x_390));
  let x_393 : f32 = u_xlat21;
  let x_394 : f32 = u_xlat22;
  let x_396 : f32 = u_xlat23;
  u_xlat21 = ((x_393 * x_394) + x_396);
  let x_399 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_399);
  let x_401 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_401);
  let x_403 : vec4<f32> = u_xlat4;
  let x_405 : vec4<f32> = u_xlat4;
  let x_407 : vec2<f32> = (vec2<f32>(x_403.x, x_403.y) / vec2<f32>(x_405.w, x_405.w));
  let x_408 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat5;
  let x_413 : vec2<f32> = (vec2<f32>(x_410.x, x_410.y) + vec2<f32>(0.5f, 0.5f));
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_421 : vec4<f32> = u_xlat5;
  let x_423 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_421.x, x_421.y));
  u_xlat23 = x_423.w;
  let x_425 : f32 = u_xlat22;
  let x_426 : f32 = u_xlat23;
  u_xlat22 = (x_425 * x_426);
  let x_428 : vec4<f32> = u_xlat4;
  let x_430 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_438 : f32 = u_xlat23;
  let x_440 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_438, x_438));
  u_xlat23 = x_440.x;
  let x_442 : f32 = u_xlat22;
  let x_443 : f32 = u_xlat23;
  u_xlat22 = (x_442 * x_443);
  let x_445 : f32 = u_xlat21;
  let x_446 : f32 = u_xlat22;
  u_xlat21 = (x_445 * x_446);
  let x_451 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_451;
  let x_455 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_455;
  let x_458 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_458;
  let x_460 : vec4<f32> = u_xlat4;
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_465);
  let x_467 : f32 = u_xlat22;
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec3<f32> = (vec3<f32>(x_467, x_467, x_467) * vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : f32 = u_xlat21;
  let x_478 : vec4<f32> = x_36.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_474, x_474, x_474) * vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_483 : f32 = x_36.x_Glossiness;
  u_xlat21 = (-(x_483) + 1.0f);
  let x_486 : vec4<f32> = u_xlat4;
  let x_488 : f32 = u_xlat22;
  let x_491 : vec3<f32> = u_xlat3;
  let x_493 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(x_488, x_488, x_488)) + -(x_491));
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat4;
  let x_498 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_496.x, x_496.y, x_496.z), vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : f32 = u_xlat22;
  u_xlat22 = max(x_501, 0.001f);
  let x_504 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_504);
  let x_506 : f32 = u_xlat22;
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : vec3<f32> = (vec3<f32>(x_506, x_506, x_506) * vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat2;
  let x_515 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_513.x, x_513.y, x_513.z), -(x_515));
  let x_518 : vec4<f32> = u_xlat2;
  let x_520 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_518.x, x_518.y, x_518.z), vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_523 : f32 = u_xlat23;
  u_xlat23 = clamp(x_523, 0.0f, 1.0f);
  let x_525 : vec4<f32> = u_xlat2;
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_532 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_532, 0.0f, 1.0f);
  let x_536 : vec4<f32> = u_xlat5;
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : f32 = u_xlat9;
  u_xlat9 = clamp(x_541, 0.0f, 1.0f);
  let x_544 : f32 = u_xlat9;
  let x_545 : f32 = u_xlat9;
  u_xlat16 = (x_544 * x_545);
  let x_547 : f32 = u_xlat16;
  let x_549 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_547, x_547), vec2<f32>(x_549, x_549));
  let x_552 : f32 = u_xlat16;
  u_xlat16 = (x_552 + -0.5f);
  let x_555 : f32 = u_xlat23;
  u_xlat3.x = (-(x_555) + 1.0f);
  let x_561 : f32 = u_xlat3.x;
  let x_563 : f32 = u_xlat3.x;
  u_xlat10 = (x_561 * x_563);
  let x_565 : f32 = u_xlat10;
  let x_566 : f32 = u_xlat10;
  u_xlat10 = (x_565 * x_566);
  let x_569 : f32 = u_xlat3.x;
  let x_570 : f32 = u_xlat10;
  u_xlat3.x = (x_569 * x_570);
  let x_573 : f32 = u_xlat16;
  let x_575 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_573 * x_575) + 1.0f);
  let x_579 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_579)) + 1.0f);
  let x_584 : f32 = u_xlat10;
  let x_585 : f32 = u_xlat10;
  u_xlat17 = (x_584 * x_585);
  let x_587 : f32 = u_xlat17;
  let x_588 : f32 = u_xlat17;
  u_xlat17 = (x_587 * x_588);
  let x_590 : f32 = u_xlat10;
  let x_591 : f32 = u_xlat17;
  u_xlat10 = (x_590 * x_591);
  let x_593 : f32 = u_xlat16;
  let x_594 : f32 = u_xlat10;
  u_xlat16 = ((x_593 * x_594) + 1.0f);
  let x_597 : f32 = u_xlat16;
  let x_599 : f32 = u_xlat3.x;
  u_xlat16 = (x_597 * x_599);
  let x_601 : f32 = u_xlat23;
  let x_602 : f32 = u_xlat16;
  u_xlat16 = (x_601 * x_602);
  let x_604 : f32 = u_xlat21;
  let x_605 : f32 = u_xlat21;
  u_xlat21 = (x_604 * x_605);
  let x_607 : f32 = u_xlat21;
  u_xlat21 = max(x_607, 0.002f);
  let x_610 : f32 = u_xlat21;
  u_xlat3.x = (-(x_610) + 1.0f);
  let x_614 : f32 = u_xlat22;
  let x_617 : f32 = u_xlat3.x;
  let x_619 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_614) * x_617) + x_619);
  let x_621 : f32 = u_xlat23;
  let x_623 : f32 = u_xlat3.x;
  let x_625 : f32 = u_xlat21;
  u_xlat3.x = ((x_621 * x_623) + x_625);
  let x_628 : f32 = u_xlat22;
  let x_631 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_628) * x_631);
  let x_633 : f32 = u_xlat23;
  let x_634 : f32 = u_xlat10;
  let x_636 : f32 = u_xlat22;
  u_xlat22 = ((x_633 * x_634) + x_636);
  let x_638 : f32 = u_xlat22;
  u_xlat22 = (x_638 + 0.00001f);
  let x_641 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_641);
  let x_643 : f32 = u_xlat21;
  let x_644 : f32 = u_xlat21;
  u_xlat21 = (x_643 * x_644);
  let x_647 : f32 = u_xlat2.x;
  let x_648 : f32 = u_xlat21;
  let x_651 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_647 * x_648) + -(x_651));
  let x_656 : f32 = u_xlat3.x;
  let x_658 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_656 * x_658) + 1.0f);
  let x_662 : f32 = u_xlat21;
  u_xlat21 = (x_662 * 0.318309873f);
  let x_666 : f32 = u_xlat2.x;
  let x_668 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_666 * x_668) + 0.0000001f);
  let x_673 : f32 = u_xlat21;
  let x_675 : f32 = u_xlat2.x;
  u_xlat21 = (x_673 / x_675);
  let x_677 : f32 = u_xlat21;
  let x_678 : f32 = u_xlat22;
  u_xlat21 = (x_677 * x_678);
  let x_680 : f32 = u_xlat23;
  let x_681 : f32 = u_xlat21;
  u_xlat21 = (x_680 * x_681);
  let x_683 : f32 = u_xlat21;
  u_xlat21 = (x_683 * 3.141592741f);
  let x_686 : f32 = u_xlat21;
  u_xlat21 = max(x_686, 0.0f);
  let x_688 : vec3<f32> = u_xlat0;
  let x_689 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_688, x_689);
  let x_691 : f32 = u_xlat22;
  u_xlatb22 = !((x_691 == 0.0f));
  let x_693 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_693);
  let x_695 : f32 = u_xlat21;
  let x_696 : f32 = u_xlat22;
  u_xlat21 = (x_695 * x_696);
  let x_698 : f32 = u_xlat16;
  let x_700 : vec3<f32> = u_xlat6;
  let x_701 : vec3<f32> = (vec3<f32>(x_698, x_698, x_698) * x_700);
  let x_702 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_701.x, x_702.y, x_701.y, x_701.z);
  let x_704 : vec3<f32> = u_xlat6;
  let x_705 : f32 = u_xlat21;
  u_xlat3 = (x_704 * vec3<f32>(x_705, x_705, x_705));
  let x_708 : f32 = u_xlat9;
  u_xlat21 = (-(x_708) + 1.0f);
  let x_711 : f32 = u_xlat21;
  let x_712 : f32 = u_xlat21;
  u_xlat22 = (x_711 * x_712);
  let x_714 : f32 = u_xlat22;
  let x_715 : f32 = u_xlat22;
  u_xlat22 = (x_714 * x_715);
  let x_717 : f32 = u_xlat21;
  let x_718 : f32 = u_xlat22;
  u_xlat21 = (x_717 * x_718);
  let x_720 : vec3<f32> = u_xlat0;
  let x_723 : vec3<f32> = (-(x_720) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_724 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
  let x_726 : vec4<f32> = u_xlat4;
  let x_728 : f32 = u_xlat21;
  let x_731 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_728, x_728, x_728)) + x_731);
  let x_733 : vec3<f32> = u_xlat0;
  let x_734 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_733 * x_734);
  let x_736 : vec3<f32> = u_xlat1;
  let x_737 : vec4<f32> = u_xlat2;
  let x_740 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_736 * vec3<f32>(x_737.x, x_737.z, x_737.w)) + x_740);
  let x_743 : f32 = vs_TEXCOORD1.w;
  let x_745 : f32 = x_36.x_ProjectionParams.y;
  u_xlat21 = (x_743 / x_745);
  let x_747 : f32 = u_xlat21;
  u_xlat21 = (-(x_747) + 1.0f);
  let x_750 : f32 = u_xlat21;
  let x_752 : f32 = x_36.x_ProjectionParams.z;
  u_xlat21 = (x_750 * x_752);
  let x_754 : f32 = u_xlat21;
  u_xlat21 = max(x_754, 0.0f);
  let x_756 : f32 = u_xlat21;
  let x_759 : f32 = x_36.unity_FogParams.x;
  u_xlat21 = (x_756 * x_759);
  let x_761 : f32 = u_xlat21;
  let x_762 : f32 = u_xlat21;
  u_xlat21 = (x_761 * -(x_762));
  let x_765 : f32 = u_xlat21;
  u_xlat21 = exp2(x_765);
  let x_769 : vec3<f32> = u_xlat0;
  let x_770 : f32 = u_xlat21;
  let x_772 : vec3<f32> = (x_769 * vec3<f32>(x_770, x_770, x_770));
  let x_773 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

