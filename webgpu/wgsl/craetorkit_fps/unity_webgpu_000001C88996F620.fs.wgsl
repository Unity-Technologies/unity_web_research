struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(10) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat28 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec2<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat11 : vec3<f32>;
  var x_267 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat29 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat10 : f32;
  var u_xlatb27 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD4;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat28 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat28;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_77 : vec2<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_77);
  u_xlat4 = vec3<f32>(x_78.x, x_78.y, x_78.z);
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_87);
  u_xlat5 = vec2<f32>(x_88.x, x_88.w);
  let x_96 : vec2<f32> = vs_TEXCOORD0;
  let x_97 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_96);
  u_xlat6 = vec3<f32>(x_97.x, x_97.y, x_97.w);
  let x_102 : f32 = u_xlat6.z;
  let x_105 : f32 = u_xlat6.x;
  u_xlat6.x = (x_102 * x_105);
  let x_108 : vec3<f32> = u_xlat6;
  let x_115 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_116 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_115.x, x_115.y, x_116.z);
  let x_118 : vec3<f32> = u_xlat6;
  let x_120 : vec3<f32> = u_xlat6;
  u_xlat28 = dot(vec2<f32>(x_118.x, x_118.y), vec2<f32>(x_120.x, x_120.y));
  let x_123 : f32 = u_xlat28;
  u_xlat28 = min(x_123, 1.0f);
  let x_126 : f32 = u_xlat28;
  u_xlat28 = (-(x_126) + 1.0f);
  let x_129 : f32 = u_xlat28;
  u_xlat6.z = sqrt(x_129);
  let x_133 : vec3<f32> = vs_TEXCOORD4;
  let x_138 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_142 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_144 : vec3<f32> = vs_TEXCOORD4;
  let x_147 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + x_147);
  let x_150 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_152 : vec3<f32> = vs_TEXCOORD4;
  let x_155 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.z, x_152.z, x_152.z)) + x_155);
  let x_157 : vec3<f32> = u_xlat7;
  let x_160 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_157 + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_167 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat8.x = x_167;
  let x_170 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat8.y = x_170;
  let x_174 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat8.z = x_174;
  let x_176 : vec4<f32> = u_xlat2;
  let x_178 : vec3<f32> = u_xlat8;
  u_xlat28 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), x_178);
  let x_180 : vec3<f32> = vs_TEXCOORD4;
  let x_183 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_186 : vec3<f32> = (x_180 + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_189.x, x_189.y, x_189.z), vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_196 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_196);
  let x_199 : f32 = u_xlat28;
  let x_202 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_199) + x_202);
  let x_207 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_209 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat28;
  u_xlat28 = ((x_207 * x_209) + x_211);
  let x_213 : f32 = u_xlat28;
  let x_216 : f32 = x_18.x_LightShadowData.z;
  let x_219 : f32 = x_18.x_LightShadowData.w;
  u_xlat28 = ((x_213 * x_216) + x_219);
  let x_221 : f32 = u_xlat28;
  u_xlat28 = clamp(x_221, 0.0f, 1.0f);
  let x_229 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_229 == 1.0f);
  let x_231 : bool = u_xlatb2;
  if (x_231) {
    let x_235 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_235 == 1.0f);
    let x_238 : vec3<f32> = vs_TEXCOORD4;
    let x_242 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat11 = (vec3<f32>(x_238.y, x_238.y, x_238.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_246 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_248 : vec3<f32> = vs_TEXCOORD4;
    let x_251 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(x_248.x, x_248.x, x_248.x)) + x_251);
    let x_254 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_256 : vec3<f32> = vs_TEXCOORD4;
    let x_259 : vec3<f32> = u_xlat11;
    u_xlat11 = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_256.z, x_256.z, x_256.z)) + x_259);
    let x_261 : vec3<f32> = u_xlat11;
    let x_263 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat11 = (x_261 + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : bool = u_xlatb2;
    if (x_266) {
      let x_270 : vec3<f32> = u_xlat11;
      x_267 = x_270;
    } else {
      let x_272 : vec3<f32> = vs_TEXCOORD4;
      x_267 = x_272;
    }
    let x_273 : vec3<f32> = x_267;
    let x_274 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : vec4<f32> = u_xlat2;
    let x_280 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_282 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) + -(x_280));
    let x_283 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
    let x_285 : vec4<f32> = u_xlat2;
    let x_289 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_290 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) * x_289);
    let x_291 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_291.x, x_290.x, x_290.y, x_290.z);
    let x_294 : f32 = u_xlat2.y;
    u_xlat11.x = ((x_294 * 0.25f) + 0.75f);
    let x_302 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat30 = ((x_302 * 0.5f) + 0.75f);
    let x_307 : f32 = u_xlat11.x;
    let x_308 : f32 = u_xlat30;
    u_xlat2.x = max(x_307, x_308);
    let x_319 : vec4<f32> = u_xlat2;
    let x_321 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_319.x, x_319.z, x_319.w));
    u_xlat2 = x_321;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_327 : vec4<f32> = u_xlat2;
  let x_330 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_327, x_330);
  let x_334 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_334, 0.0f, 1.0f);
  let x_337 : vec3<f32> = vs_TEXCOORD4;
  let x_339 : vec4<f32> = x_18.x_LightPositionRange;
  u_xlat11 = (x_337 + -(vec3<f32>(x_339.x, x_339.y, x_339.z)));
  let x_344 : f32 = u_xlat11.y;
  let x_347 : f32 = u_xlat11.x;
  u_xlat30 = max(abs(x_344), abs(x_347));
  let x_351 : f32 = u_xlat11.z;
  let x_353 : f32 = u_xlat30;
  u_xlat30 = max(abs(x_351), x_353);
  let x_355 : f32 = u_xlat30;
  let x_358 : f32 = x_18.x_LightProjectionParams.z;
  u_xlat30 = (x_355 + -(x_358));
  let x_361 : f32 = u_xlat30;
  u_xlat30 = max(x_361, 0.00001f);
  let x_364 : f32 = u_xlat30;
  let x_366 : f32 = x_18.x_LightProjectionParams.w;
  u_xlat30 = (x_364 * x_366);
  let x_369 : f32 = x_18.x_LightProjectionParams.y;
  let x_370 : f32 = u_xlat30;
  u_xlat30 = (x_369 / x_370);
  let x_372 : f32 = u_xlat30;
  let x_374 : f32 = x_18.x_LightProjectionParams.x;
  u_xlat30 = (x_372 + -(x_374));
  let x_377 : f32 = u_xlat30;
  u_xlat30 = (-(x_377) + 1.0f);
  let x_381 : vec3<f32> = u_xlat11;
  let x_382 : f32 = u_xlat30;
  txVec0 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382);
  let x_395 : vec4<f32> = txVec0;
  let x_397 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_395.xyz, x_395.w);
  u_xlat11.x = x_397;
  let x_401 : f32 = x_18.x_LightShadowData.x;
  u_xlat20 = (-(x_401) + 1.0f);
  let x_405 : f32 = u_xlat11.x;
  let x_406 : f32 = u_xlat20;
  let x_409 : f32 = x_18.x_LightShadowData.x;
  u_xlat11.x = ((x_405 * x_406) + x_409);
  let x_413 : f32 = u_xlat11.x;
  let x_416 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_413) + x_416);
  let x_419 : f32 = u_xlat28;
  let x_421 : f32 = u_xlat2.x;
  let x_424 : f32 = u_xlat11.x;
  u_xlat28 = ((x_419 * x_421) + x_424);
  let x_426 : vec3<f32> = u_xlat7;
  let x_427 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_426, x_427);
  let x_435 : vec4<f32> = u_xlat2;
  let x_437 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_435.x, x_435.x));
  u_xlat2.x = x_437.x;
  let x_440 : f32 = u_xlat28;
  let x_442 : f32 = u_xlat2.x;
  u_xlat28 = (x_440 * x_442);
  let x_445 : vec3<f32> = vs_TEXCOORD1;
  let x_446 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(x_445, x_446);
  let x_450 : vec3<f32> = vs_TEXCOORD2;
  let x_451 : vec3<f32> = u_xlat6;
  u_xlat2.y = dot(x_450, x_451);
  let x_455 : vec3<f32> = vs_TEXCOORD3;
  let x_456 : vec3<f32> = u_xlat6;
  u_xlat2.z = dot(x_455, x_456);
  let x_460 : vec4<f32> = u_xlat2;
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat29 = dot(vec3<f32>(x_460.x, x_460.y, x_460.z), vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_465);
  let x_467 : f32 = u_xlat29;
  let x_469 : vec4<f32> = u_xlat2;
  let x_471 : vec3<f32> = (vec3<f32>(x_467, x_467, x_467) * vec3<f32>(x_469.x, x_469.y, x_469.z));
  let x_472 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_474 : f32 = u_xlat28;
  let x_478 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_474, x_474, x_474) * vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec3<f32> = u_xlat4;
  u_xlat7 = (x_481 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_485 : vec2<f32> = u_xlat5;
  let x_487 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_485.x, x_485.x, x_485.x) * x_487) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_493 : f32 = u_xlat5.x;
  u_xlat28 = ((-(x_493) * 0.959999979f) + 0.959999979f);
  let x_498 : f32 = u_xlat28;
  let x_500 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_498, x_498, x_498) * x_500);
  let x_503 : f32 = u_xlat5.y;
  u_xlat28 = (-(x_503) + 1.0f);
  let x_506 : vec3<f32> = u_xlat0;
  let x_507 : f32 = u_xlat27;
  let x_510 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_506 * vec3<f32>(x_507, x_507, x_507)) + x_510);
  let x_512 : vec3<f32> = u_xlat0;
  let x_513 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_512, x_513);
  let x_515 : f32 = u_xlat27;
  u_xlat27 = max(x_515, 0.001f);
  let x_518 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_518);
  let x_520 : f32 = u_xlat27;
  let x_522 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_520, x_520, x_520) * x_522);
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_524.x, x_524.y, x_524.z), x_526);
  let x_528 : vec4<f32> = u_xlat2;
  let x_530 : vec3<f32> = u_xlat1;
  u_xlat29 = dot(vec3<f32>(x_528.x, x_528.y, x_528.z), x_530);
  let x_532 : f32 = u_xlat29;
  u_xlat29 = clamp(x_532, 0.0f, 1.0f);
  let x_534 : vec4<f32> = u_xlat2;
  let x_536 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_534.x, x_534.y, x_534.z), x_536);
  let x_540 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_540, 0.0f, 1.0f);
  let x_543 : vec3<f32> = u_xlat1;
  let x_544 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_543, x_544);
  let x_548 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_548, 0.0f, 1.0f);
  let x_553 : f32 = u_xlat0.x;
  let x_555 : f32 = u_xlat0.x;
  u_xlat9.x = (x_553 * x_555);
  let x_558 : vec3<f32> = u_xlat9;
  let x_560 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_558.x, x_558.x), vec2<f32>(x_560, x_560));
  let x_565 : f32 = u_xlat9.x;
  u_xlat9.x = (x_565 + -0.5f);
  let x_570 : f32 = u_xlat29;
  u_xlat18 = (-(x_570) + 1.0f);
  let x_573 : f32 = u_xlat18;
  let x_574 : f32 = u_xlat18;
  u_xlat1.x = (x_573 * x_574);
  let x_578 : f32 = u_xlat1.x;
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = (x_578 * x_580);
  let x_583 : f32 = u_xlat18;
  let x_585 : f32 = u_xlat1.x;
  u_xlat18 = (x_583 * x_585);
  let x_588 : f32 = u_xlat9.x;
  let x_589 : f32 = u_xlat18;
  u_xlat18 = ((x_588 * x_589) + 1.0f);
  let x_592 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_592)) + 1.0f);
  let x_599 : f32 = u_xlat1.x;
  let x_601 : f32 = u_xlat1.x;
  u_xlat10 = (x_599 * x_601);
  let x_603 : f32 = u_xlat10;
  let x_604 : f32 = u_xlat10;
  u_xlat10 = (x_603 * x_604);
  let x_607 : f32 = u_xlat1.x;
  let x_608 : f32 = u_xlat10;
  u_xlat1.x = (x_607 * x_608);
  let x_612 : f32 = u_xlat9.x;
  let x_614 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_612 * x_614) + 1.0f);
  let x_619 : f32 = u_xlat9.x;
  let x_620 : f32 = u_xlat18;
  u_xlat9.x = (x_619 * x_620);
  let x_623 : f32 = u_xlat28;
  let x_624 : f32 = u_xlat28;
  u_xlat18 = (x_623 * x_624);
  let x_626 : f32 = u_xlat18;
  u_xlat18 = max(x_626, 0.002f);
  let x_629 : f32 = u_xlat18;
  u_xlat1.x = (-(x_629) + 1.0f);
  let x_633 : f32 = u_xlat27;
  let x_636 : f32 = u_xlat1.x;
  let x_638 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_633) * x_636) + x_638);
  let x_640 : f32 = u_xlat29;
  let x_642 : f32 = u_xlat1.x;
  let x_644 : f32 = u_xlat18;
  u_xlat1.x = ((x_640 * x_642) + x_644);
  let x_647 : f32 = u_xlat27;
  let x_650 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_647) * x_650);
  let x_652 : f32 = u_xlat29;
  let x_653 : f32 = u_xlat10;
  let x_655 : f32 = u_xlat27;
  u_xlat27 = ((x_652 * x_653) + x_655);
  let x_657 : f32 = u_xlat27;
  u_xlat27 = (x_657 + 0.00001f);
  let x_659 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_659);
  let x_661 : f32 = u_xlat18;
  let x_662 : f32 = u_xlat18;
  u_xlat18 = (x_661 * x_662);
  let x_665 : f32 = u_xlat2.x;
  let x_666 : f32 = u_xlat18;
  let x_669 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_665 * x_666) + -(x_669));
  let x_674 : f32 = u_xlat1.x;
  let x_676 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_674 * x_676) + 1.0f);
  let x_680 : f32 = u_xlat18;
  u_xlat18 = (x_680 * 0.318309873f);
  let x_684 : f32 = u_xlat1.x;
  let x_686 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_684 * x_686) + 0.0000001f);
  let x_691 : f32 = u_xlat18;
  let x_693 : f32 = u_xlat1.x;
  u_xlat18 = (x_691 / x_693);
  let x_695 : f32 = u_xlat18;
  let x_696 : f32 = u_xlat27;
  u_xlat9.y = (x_695 * x_696);
  let x_699 : f32 = u_xlat29;
  let x_701 : vec3<f32> = u_xlat9;
  let x_703 : vec2<f32> = (vec2<f32>(x_699, x_699) * vec2<f32>(x_701.x, x_701.y));
  let x_704 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_703.x, x_703.y, x_704.z);
  let x_707 : f32 = u_xlat9.y;
  u_xlat18 = (x_707 * 3.141592741f);
  let x_710 : f32 = u_xlat18;
  u_xlat18 = max(x_710, 0.0f);
  let x_712 : vec3<f32> = u_xlat7;
  let x_713 : vec3<f32> = u_xlat7;
  u_xlat27 = dot(x_712, x_713);
  let x_716 : f32 = u_xlat27;
  u_xlatb27 = !((x_716 == 0.0f));
  let x_718 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_718);
  let x_720 : f32 = u_xlat27;
  let x_721 : f32 = u_xlat18;
  u_xlat18 = (x_720 * x_721);
  let x_723 : vec3<f32> = u_xlat9;
  let x_725 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_723.x, x_723.x, x_723.x) * x_725);
  let x_727 : vec3<f32> = u_xlat6;
  let x_728 : f32 = u_xlat18;
  u_xlat9 = (x_727 * vec3<f32>(x_728, x_728, x_728));
  let x_732 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_732) + 1.0f);
  let x_737 : f32 = u_xlat0.x;
  let x_739 : f32 = u_xlat0.x;
  u_xlat28 = (x_737 * x_739);
  let x_741 : f32 = u_xlat28;
  let x_742 : f32 = u_xlat28;
  u_xlat28 = (x_741 * x_742);
  let x_745 : f32 = u_xlat0.x;
  let x_746 : f32 = u_xlat28;
  u_xlat0.x = (x_745 * x_746);
  let x_749 : vec3<f32> = u_xlat7;
  let x_752 : vec3<f32> = (-(x_749) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_753 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat2;
  let x_757 : vec3<f32> = u_xlat0;
  let x_760 : vec3<f32> = u_xlat7;
  let x_761 : vec3<f32> = ((vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757.x, x_757.x, x_757.x)) + x_760);
  let x_762 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec3<f32> = u_xlat9;
  let x_765 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_764 * vec3<f32>(x_765.x, x_765.y, x_765.z));
  let x_768 : vec3<f32> = u_xlat4;
  let x_769 : vec3<f32> = u_xlat1;
  let x_771 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_768 * x_769) + x_771);
  let x_775 : f32 = vs_TEXCOORD7;
  let x_777 : f32 = x_18.x_ProjectionParams.y;
  u_xlat27 = (x_775 / x_777);
  let x_779 : f32 = u_xlat27;
  u_xlat27 = (-(x_779) + 1.0f);
  let x_782 : f32 = u_xlat27;
  let x_784 : f32 = x_18.x_ProjectionParams.z;
  u_xlat27 = (x_782 * x_784);
  let x_786 : f32 = u_xlat27;
  u_xlat27 = max(x_786, 0.0f);
  let x_788 : f32 = u_xlat27;
  let x_791 : f32 = x_18.unity_FogParams.x;
  u_xlat27 = (x_788 * x_791);
  let x_793 : f32 = u_xlat27;
  let x_794 : f32 = u_xlat27;
  u_xlat27 = (x_793 * -(x_794));
  let x_797 : f32 = u_xlat27;
  u_xlat27 = exp2(x_797);
  let x_801 : vec3<f32> = u_xlat0;
  let x_802 : f32 = u_xlat27;
  let x_804 : vec3<f32> = (x_801 * vec3<f32>(x_802, x_802, x_802));
  let x_805 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD7_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

