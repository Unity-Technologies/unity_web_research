struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(5) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_297 : vec3<f32>;
  var txVec0 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Color;
  u_xlat1 = (x_27 * x_37);
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = x_32.x_Color;
  let x_47 : vec3<f32> = ((vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_42.x, x_42.y, x_42.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_47.z, x_48.w);
  let x_53 : f32 = x_32.x_Metallic;
  let x_55 : f32 = x_32.x_Metallic;
  let x_57 : f32 = x_32.x_Metallic;
  let x_58 : vec3<f32> = vec3<f32>(x_53, x_55, x_57);
  let x_63 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_63.x, x_63.y, x_63.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_74 : f32 = x_32.x_Metallic;
  u_xlat21 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat21;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = vs_TEXCOORD4;
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_88.x, x_88.y, x_88.z), vec3<f32>(x_90.x, x_90.y, x_90.z));
  let x_97 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_97);
  let x_100 : vec4<f32> = u_xlat2;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_104 : vec3<f32> = (vec3<f32>(x_100.x, x_100.x, x_100.x) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_109 : vec4<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = vs_TEXCOORD1;
  u_xlat23 = dot(vec3<f32>(x_109.x, x_109.y, x_109.z), vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_114);
  let x_118 : f32 = u_xlat23;
  let x_120 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_118, x_118, x_118) * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = (vec3<f32>(x_123.w, x_123.w, x_123.w) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : f32 = u_xlat21;
  u_xlat23 = (-(x_130) + 1.0f);
  let x_138 : f32 = u_xlat1.w;
  let x_139 : f32 = u_xlat21;
  let x_141 : f32 = u_xlat23;
  SV_Target0.w = ((x_138 * x_139) + x_141);
  let x_148 : vec3<f32> = vs_TEXCOORD5;
  let x_153 : vec4<f32> = x_32.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_148.y, x_148.y, x_148.y) * vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_158 : vec4<f32> = x_32.unity_WorldToLight[0i];
  let x_160 : vec3<f32> = vs_TEXCOORD5;
  let x_163 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + x_163);
  let x_167 : vec4<f32> = x_32.unity_WorldToLight[2i];
  let x_169 : vec3<f32> = vs_TEXCOORD5;
  let x_172 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169.z, x_169.z, x_169.z)) + x_172);
  let x_174 : vec3<f32> = u_xlat4;
  let x_177 : vec4<f32> = x_32.unity_WorldToLight[3i];
  u_xlat4 = (x_174 + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec3<f32> = vs_TEXCOORD5;
  let x_185 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  let x_186 : vec3<f32> = (-(x_181) + x_185);
  let x_187 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_193 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat6.x = x_193;
  let x_196 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat6.y = x_196;
  let x_200 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat6.z = x_200;
  let x_202 : vec4<f32> = u_xlat5;
  let x_204 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), x_204);
  let x_206 : vec3<f32> = vs_TEXCOORD5;
  let x_209 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  let x_212 : vec3<f32> = (x_206 + -(vec3<f32>(x_209.x, x_209.y, x_209.z)));
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_221);
  let x_223 : f32 = u_xlat21;
  let x_225 : f32 = u_xlat22;
  u_xlat22 = (-(x_223) + x_225);
  let x_228 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_229 : f32 = u_xlat22;
  let x_231 : f32 = u_xlat21;
  u_xlat21 = ((x_228 * x_229) + x_231);
  let x_233 : f32 = u_xlat21;
  let x_236 : f32 = x_32.x_LightShadowData.z;
  let x_239 : f32 = x_32.x_LightShadowData.w;
  u_xlat21 = ((x_233 * x_236) + x_239);
  let x_241 : f32 = u_xlat21;
  u_xlat21 = clamp(x_241, 0.0f, 1.0f);
  let x_249 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_249 == 1.0f);
  let x_251 : bool = u_xlatb22;
  if (x_251) {
    let x_255 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_255 == 1.0f);
    let x_257 : vec3<f32> = vs_TEXCOORD5;
    let x_261 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_263 : vec3<f32> = (vec3<f32>(x_257.y, x_257.y, x_257.y) * vec3<f32>(x_261.x, x_261.y, x_261.z));
    let x_264 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
    let x_267 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_269 : vec3<f32> = vs_TEXCOORD5;
    let x_272 : vec4<f32> = u_xlat5;
    let x_274 : vec3<f32> = ((vec3<f32>(x_267.x, x_267.y, x_267.z) * vec3<f32>(x_269.x, x_269.x, x_269.x)) + vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_278 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_280 : vec3<f32> = vs_TEXCOORD5;
    let x_283 : vec4<f32> = u_xlat5;
    let x_285 : vec3<f32> = ((vec3<f32>(x_278.x, x_278.y, x_278.z) * vec3<f32>(x_280.z, x_280.z, x_280.z)) + vec3<f32>(x_283.x, x_283.y, x_283.z));
    let x_286 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat5;
    let x_291 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_293 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + vec3<f32>(x_291.x, x_291.y, x_291.z));
    let x_294 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_296 : bool = u_xlatb22;
    if (x_296) {
      let x_300 : vec4<f32> = u_xlat5;
      x_297 = vec3<f32>(x_300.x, x_300.y, x_300.z);
    } else {
      let x_303 : vec3<f32> = vs_TEXCOORD5;
      x_297 = x_303;
    }
    let x_304 : vec3<f32> = x_297;
    let x_305 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat5;
    let x_311 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_313 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + -(x_311));
    let x_314 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat5;
    let x_320 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_321 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * x_320);
    let x_322 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_322.x, x_321.x, x_321.y, x_321.z);
    let x_325 : f32 = u_xlat5.y;
    u_xlat22 = ((x_325 * 0.25f) + 0.75f);
    let x_331 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_331 * 0.5f) + 0.75f);
    let x_335 : f32 = u_xlat22;
    let x_336 : f32 = u_xlat23;
    u_xlat5.x = max(x_335, x_336);
    let x_347 : vec4<f32> = u_xlat5;
    let x_349 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_347.x, x_347.z, x_347.w));
    u_xlat5 = x_349;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_355 : vec4<f32> = u_xlat5;
  let x_358 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_355, x_358);
  let x_360 : f32 = u_xlat22;
  u_xlat22 = clamp(x_360, 0.0f, 1.0f);
  let x_362 : vec3<f32> = vs_TEXCOORD5;
  let x_364 : vec4<f32> = x_32.x_LightPositionRange;
  let x_367 : vec3<f32> = (x_362 + -(vec3<f32>(x_364.x, x_364.y, x_364.z)));
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_371 : f32 = u_xlat5.y;
  let x_374 : f32 = u_xlat5.x;
  u_xlat23 = max(abs(x_371), abs(x_374));
  let x_378 : f32 = u_xlat5.z;
  let x_380 : f32 = u_xlat23;
  u_xlat23 = max(abs(x_378), x_380);
  let x_382 : f32 = u_xlat23;
  let x_384 : f32 = x_32.x_LightProjectionParams.z;
  u_xlat23 = (x_382 + -(x_384));
  let x_387 : f32 = u_xlat23;
  u_xlat23 = max(x_387, 0.00001f);
  let x_390 : f32 = u_xlat23;
  let x_392 : f32 = x_32.x_LightProjectionParams.w;
  u_xlat23 = (x_390 * x_392);
  let x_395 : f32 = x_32.x_LightProjectionParams.y;
  let x_396 : f32 = u_xlat23;
  u_xlat23 = (x_395 / x_396);
  let x_398 : f32 = u_xlat23;
  let x_400 : f32 = x_32.x_LightProjectionParams.x;
  u_xlat23 = (x_398 + -(x_400));
  let x_403 : f32 = u_xlat23;
  u_xlat23 = (-(x_403) + 1.0f);
  let x_407 : vec4<f32> = u_xlat5;
  let x_408 : vec3<f32> = vec3<f32>(x_407.x, x_407.y, x_407.z);
  let x_409 : f32 = u_xlat23;
  txVec0 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409);
  let x_422 : vec4<f32> = txVec0;
  let x_424 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_422.xyz, x_422.w);
  u_xlat23 = x_424;
  let x_427 : f32 = x_32.x_LightShadowData.x;
  u_xlat24 = (-(x_427) + 1.0f);
  let x_430 : f32 = u_xlat23;
  let x_431 : f32 = u_xlat24;
  let x_434 : f32 = x_32.x_LightShadowData.x;
  u_xlat23 = ((x_430 * x_431) + x_434);
  let x_436 : f32 = u_xlat22;
  let x_437 : f32 = u_xlat23;
  u_xlat22 = (x_436 + -(x_437));
  let x_440 : f32 = u_xlat21;
  let x_441 : f32 = u_xlat22;
  let x_443 : f32 = u_xlat23;
  u_xlat21 = ((x_440 * x_441) + x_443);
  let x_445 : vec3<f32> = u_xlat4;
  let x_446 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_445, x_446);
  let x_453 : f32 = u_xlat22;
  let x_455 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_453, x_453));
  u_xlat22 = x_455.x;
  let x_457 : f32 = u_xlat21;
  let x_458 : f32 = u_xlat22;
  u_xlat21 = (x_457 * x_458);
  let x_463 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_463;
  let x_467 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_467;
  let x_470 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_470;
  let x_472 : vec3<f32> = u_xlat4;
  let x_473 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_472, x_473);
  let x_475 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_475);
  let x_477 : f32 = u_xlat22;
  let x_479 : vec3<f32> = u_xlat4;
  let x_480 : vec3<f32> = (vec3<f32>(x_477, x_477, x_477) * x_479);
  let x_481 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : f32 = u_xlat21;
  let x_487 : vec4<f32> = x_32.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_483, x_483, x_483) * vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_492 : f32 = x_32.x_Glossiness;
  u_xlat21 = (-(x_492) + 1.0f);
  let x_495 : vec3<f32> = u_xlat4;
  let x_496 : f32 = u_xlat22;
  let x_499 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_495 * vec3<f32>(x_496, x_496, x_496)) + -(x_499));
  let x_502 : vec3<f32> = u_xlat4;
  let x_503 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_502, x_503);
  let x_505 : f32 = u_xlat22;
  u_xlat22 = max(x_505, 0.001f);
  let x_508 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_508);
  let x_510 : f32 = u_xlat22;
  let x_512 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_510, x_510, x_510) * x_512);
  let x_514 : vec4<f32> = u_xlat2;
  let x_516 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_514.x, x_514.y, x_514.z), -(x_516));
  let x_519 : vec4<f32> = u_xlat2;
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_519.x, x_519.y, x_519.z), vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : f32 = u_xlat23;
  u_xlat23 = clamp(x_524, 0.0f, 1.0f);
  let x_526 : vec4<f32> = u_xlat2;
  let x_528 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_526.x, x_526.y, x_526.z), x_528);
  let x_532 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_532, 0.0f, 1.0f);
  let x_536 : vec4<f32> = u_xlat5;
  let x_538 : vec3<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), x_538);
  let x_540 : f32 = u_xlat9;
  u_xlat9 = clamp(x_540, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat9;
  let x_544 : f32 = u_xlat9;
  u_xlat16 = (x_543 * x_544);
  let x_546 : f32 = u_xlat16;
  let x_548 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_546, x_546), vec2<f32>(x_548, x_548));
  let x_551 : f32 = u_xlat16;
  u_xlat16 = (x_551 + -0.5f);
  let x_554 : f32 = u_xlat23;
  u_xlat3.x = (-(x_554) + 1.0f);
  let x_560 : f32 = u_xlat3.x;
  let x_562 : f32 = u_xlat3.x;
  u_xlat10 = (x_560 * x_562);
  let x_564 : f32 = u_xlat10;
  let x_565 : f32 = u_xlat10;
  u_xlat10 = (x_564 * x_565);
  let x_568 : f32 = u_xlat3.x;
  let x_569 : f32 = u_xlat10;
  u_xlat3.x = (x_568 * x_569);
  let x_572 : f32 = u_xlat16;
  let x_574 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_572 * x_574) + 1.0f);
  let x_578 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_578)) + 1.0f);
  let x_583 : f32 = u_xlat10;
  let x_584 : f32 = u_xlat10;
  u_xlat17 = (x_583 * x_584);
  let x_586 : f32 = u_xlat17;
  let x_587 : f32 = u_xlat17;
  u_xlat17 = (x_586 * x_587);
  let x_589 : f32 = u_xlat10;
  let x_590 : f32 = u_xlat17;
  u_xlat10 = (x_589 * x_590);
  let x_592 : f32 = u_xlat16;
  let x_593 : f32 = u_xlat10;
  u_xlat16 = ((x_592 * x_593) + 1.0f);
  let x_596 : f32 = u_xlat16;
  let x_598 : f32 = u_xlat3.x;
  u_xlat16 = (x_596 * x_598);
  let x_600 : f32 = u_xlat23;
  let x_601 : f32 = u_xlat16;
  u_xlat16 = (x_600 * x_601);
  let x_603 : f32 = u_xlat21;
  let x_604 : f32 = u_xlat21;
  u_xlat21 = (x_603 * x_604);
  let x_606 : f32 = u_xlat21;
  u_xlat21 = max(x_606, 0.002f);
  let x_609 : f32 = u_xlat21;
  u_xlat3.x = (-(x_609) + 1.0f);
  let x_613 : f32 = u_xlat22;
  let x_616 : f32 = u_xlat3.x;
  let x_618 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_613) * x_616) + x_618);
  let x_620 : f32 = u_xlat23;
  let x_622 : f32 = u_xlat3.x;
  let x_624 : f32 = u_xlat21;
  u_xlat3.x = ((x_620 * x_622) + x_624);
  let x_627 : f32 = u_xlat22;
  let x_630 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_627) * x_630);
  let x_632 : f32 = u_xlat23;
  let x_633 : f32 = u_xlat10;
  let x_635 : f32 = u_xlat22;
  u_xlat22 = ((x_632 * x_633) + x_635);
  let x_637 : f32 = u_xlat22;
  u_xlat22 = (x_637 + 0.00001f);
  let x_639 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_639);
  let x_641 : f32 = u_xlat21;
  let x_642 : f32 = u_xlat21;
  u_xlat21 = (x_641 * x_642);
  let x_645 : f32 = u_xlat2.x;
  let x_646 : f32 = u_xlat21;
  let x_649 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_645 * x_646) + -(x_649));
  let x_654 : f32 = u_xlat3.x;
  let x_656 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_654 * x_656) + 1.0f);
  let x_660 : f32 = u_xlat21;
  u_xlat21 = (x_660 * 0.318309873f);
  let x_664 : f32 = u_xlat2.x;
  let x_666 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_664 * x_666) + 0.0000001f);
  let x_671 : f32 = u_xlat21;
  let x_673 : f32 = u_xlat2.x;
  u_xlat21 = (x_671 / x_673);
  let x_675 : f32 = u_xlat21;
  let x_676 : f32 = u_xlat22;
  u_xlat21 = (x_675 * x_676);
  let x_678 : f32 = u_xlat23;
  let x_679 : f32 = u_xlat21;
  u_xlat21 = (x_678 * x_679);
  let x_681 : f32 = u_xlat21;
  u_xlat21 = (x_681 * 3.141592741f);
  let x_684 : f32 = u_xlat21;
  u_xlat21 = max(x_684, 0.0f);
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_686.x, x_686.y, x_686.z), vec3<f32>(x_688.x, x_688.y, x_688.z));
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
  let x_720 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_720.x, x_720.y, x_720.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_725 : vec3<f32> = u_xlat4;
  let x_726 : f32 = u_xlat21;
  let x_729 : vec4<f32> = u_xlat0;
  let x_731 : vec3<f32> = ((x_725 * vec3<f32>(x_726, x_726, x_726)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  let x_732 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat0;
  let x_736 : vec3<f32> = u_xlat3;
  let x_737 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) * x_736);
  let x_738 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat1;
  let x_742 : vec4<f32> = u_xlat2;
  let x_745 : vec4<f32> = u_xlat0;
  let x_747 : vec3<f32> = ((vec3<f32>(x_740.x, x_740.y, x_740.z) * vec3<f32>(x_742.x, x_742.z, x_742.w)) + vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_751 : f32 = vs_TEXCOORD1.w;
  let x_753 : f32 = x_32.x_ProjectionParams.y;
  u_xlat21 = (x_751 / x_753);
  let x_755 : f32 = u_xlat21;
  u_xlat21 = (-(x_755) + 1.0f);
  let x_758 : f32 = u_xlat21;
  let x_760 : f32 = x_32.x_ProjectionParams.z;
  u_xlat21 = (x_758 * x_760);
  let x_762 : f32 = u_xlat21;
  u_xlat21 = max(x_762, 0.0f);
  let x_764 : f32 = u_xlat21;
  let x_767 : f32 = x_32.unity_FogParams.x;
  u_xlat21 = (x_764 * x_767);
  let x_769 : f32 = u_xlat21;
  let x_770 : f32 = u_xlat21;
  u_xlat21 = (x_769 * -(x_770));
  let x_773 : f32 = u_xlat21;
  u_xlat21 = exp2(x_773);
  let x_775 : vec4<f32> = u_xlat0;
  let x_777 : f32 = u_xlat21;
  let x_779 : vec3<f32> = (vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_777, x_777, x_777));
  let x_780 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
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

