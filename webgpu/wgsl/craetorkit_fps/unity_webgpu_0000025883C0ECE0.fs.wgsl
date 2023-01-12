struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
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
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_OcclusionMap : sampler;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat39 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat41 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlatb40 : bool;
  var x_277 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb39 : bool;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_484 : f32;
  var x_496 : f32;
  var x_508 : f32;
  var u_xlat44 : f32;
  var u_xlatb45 : bool;
  var u_xlat45 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_663 : f32;
  var x_675 : f32;
  var x_687 : f32;
  var u_xlat15 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlat29 : f32;
  var u_xlatb2 : bool;
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
  u_xlat39 = ((-(x_74) * 0.959999979f) + 0.959999979f);
  let x_79 : f32 = u_xlat39;
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_89 : vec4<f32> = vs_TEXCOORD4;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_89.x, x_89.y, x_89.z), vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_98);
  let x_101 : vec3<f32> = u_xlat2;
  let x_103 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_101.x, x_101.x, x_101.x) * vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_108 : vec4<f32> = vs_TEXCOORD1;
  let x_110 : vec4<f32> = vs_TEXCOORD1;
  u_xlat41 = dot(vec3<f32>(x_108.x, x_108.y, x_108.z), vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : f32 = u_xlat41;
  u_xlat41 = inverseSqrt(x_113);
  let x_116 : f32 = u_xlat41;
  let x_118 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_116, x_116, x_116) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec4<f32> = u_xlat1;
  let x_125 : vec3<f32> = (vec3<f32>(x_121.w, x_121.w, x_121.w) * vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_129 : f32 = u_xlat39;
  u_xlat42 = (-(x_129) + 1.0f);
  let x_137 : f32 = u_xlat1.w;
  let x_138 : f32 = u_xlat39;
  let x_140 : f32 = u_xlat42;
  SV_Target0.w = ((x_137 * x_138) + x_140);
  let x_148 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_148;
  let x_152 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_152;
  let x_156 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_156;
  let x_160 : vec3<f32> = u_xlat4;
  let x_165 : vec3<f32> = x_32.x_WorldSpaceCameraPos;
  let x_166 : vec3<f32> = (-(x_160) + x_165);
  let x_167 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_172 : f32 = x_32.unity_MatrixV[0i].z;
  u_xlat6.x = x_172;
  let x_176 : f32 = x_32.unity_MatrixV[1i].z;
  u_xlat6.y = x_176;
  let x_180 : f32 = x_32.unity_MatrixV[2i].z;
  u_xlat6.z = x_180;
  let x_182 : vec4<f32> = u_xlat5;
  let x_184 : vec3<f32> = u_xlat6;
  u_xlat39 = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), x_184);
  let x_186 : vec3<f32> = u_xlat4;
  let x_189 : vec4<f32> = x_32.unity_ShadowFadeCenterAndType;
  let x_192 : vec3<f32> = (x_186 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec4<f32> = u_xlat5;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : f32 = u_xlat40;
  u_xlat40 = sqrt(x_201);
  let x_203 : f32 = u_xlat39;
  let x_205 : f32 = u_xlat40;
  u_xlat40 = (-(x_203) + x_205);
  let x_208 : f32 = x_32.unity_ShadowFadeCenterAndType.w;
  let x_209 : f32 = u_xlat40;
  let x_211 : f32 = u_xlat39;
  u_xlat39 = ((x_208 * x_209) + x_211);
  let x_213 : f32 = u_xlat39;
  let x_216 : f32 = x_32.x_LightShadowData.z;
  let x_219 : f32 = x_32.x_LightShadowData.w;
  u_xlat39 = ((x_213 * x_216) + x_219);
  let x_221 : f32 = u_xlat39;
  u_xlat39 = clamp(x_221, 0.0f, 1.0f);
  let x_229 : f32 = x_32.unity_ProbeVolumeParams.x;
  u_xlatb40 = (x_229 == 1.0f);
  let x_231 : bool = u_xlatb40;
  if (x_231) {
    let x_235 : f32 = x_32.unity_ProbeVolumeParams.y;
    u_xlatb40 = (x_235 == 1.0f);
    let x_237 : vec4<f32> = vs_TEXCOORD3;
    let x_241 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[1i];
    let x_243 : vec3<f32> = (vec3<f32>(x_237.w, x_237.w, x_237.w) * vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_247 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[0i];
    let x_249 : vec4<f32> = vs_TEXCOORD2;
    let x_252 : vec4<f32> = u_xlat5;
    let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.w, x_249.w, x_249.w)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
    let x_255 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_258 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[2i];
    let x_260 : vec4<f32> = vs_TEXCOORD4;
    let x_263 : vec4<f32> = u_xlat5;
    let x_265 : vec3<f32> = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.w, x_260.w, x_260.w)) + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_268 : vec4<f32> = u_xlat5;
    let x_271 : vec4<f32> = x_32.unity_ProbeVolumeWorldToObject[3i];
    let x_273 : vec3<f32> = (vec3<f32>(x_268.x, x_268.y, x_268.z) + vec3<f32>(x_271.x, x_271.y, x_271.z));
    let x_274 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : bool = u_xlatb40;
    if (x_276) {
      let x_280 : vec4<f32> = u_xlat5;
      x_277 = vec3<f32>(x_280.x, x_280.y, x_280.z);
    } else {
      let x_283 : vec3<f32> = u_xlat4;
      x_277 = x_283;
    }
    let x_284 : vec3<f32> = x_277;
    let x_285 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : vec4<f32> = u_xlat5;
    let x_291 : vec3<f32> = x_32.unity_ProbeVolumeMin;
    let x_293 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + -(x_291));
    let x_294 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_296 : vec4<f32> = u_xlat5;
    let x_300 : vec3<f32> = x_32.unity_ProbeVolumeSizeInv;
    let x_301 : vec3<f32> = (vec3<f32>(x_296.x, x_296.y, x_296.z) * x_300);
    let x_302 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_302.x, x_301.x, x_301.y, x_301.z);
    let x_305 : f32 = u_xlat5.y;
    u_xlat40 = ((x_305 * 0.25f) + 0.75f);
    let x_312 : f32 = x_32.unity_ProbeVolumeParams.z;
    u_xlat43 = ((x_312 * 0.5f) + 0.75f);
    let x_316 : f32 = u_xlat40;
    let x_317 : f32 = u_xlat43;
    u_xlat5.x = max(x_316, x_317);
    let x_328 : vec4<f32> = u_xlat5;
    let x_330 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_328.x, x_328.z, x_328.w));
    u_xlat5 = x_330;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_336 : vec4<f32> = u_xlat5;
  let x_338 : vec4<f32> = x_32.unity_OcclusionMaskSelector;
  u_xlat40 = dot(x_336, x_338);
  let x_340 : f32 = u_xlat40;
  u_xlat40 = clamp(x_340, 0.0f, 1.0f);
  let x_343 : vec4<f32> = vs_TEXCOORD7;
  let x_345 : vec4<f32> = vs_TEXCOORD7;
  let x_347 : vec2<f32> = (vec2<f32>(x_343.x, x_343.y) / vec2<f32>(x_345.w, x_345.w));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_348.z, x_348.w);
  let x_355 : vec4<f32> = u_xlat5;
  let x_357 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_355.x, x_355.y));
  u_xlat43 = x_357.x;
  let x_359 : f32 = u_xlat40;
  let x_360 : f32 = u_xlat43;
  u_xlat40 = (x_359 + -(x_360));
  let x_363 : f32 = u_xlat39;
  let x_364 : f32 = u_xlat40;
  let x_366 : f32 = u_xlat43;
  u_xlat39 = ((x_363 * x_364) + x_366);
  let x_373 : vec4<f32> = vs_TEXCOORD0;
  let x_375 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_373.x, x_373.y));
  u_xlat40 = x_375.y;
  let x_379 : f32 = x_32.x_OcclusionStrength;
  u_xlat43 = (-(x_379) + 1.0f);
  let x_382 : f32 = u_xlat40;
  let x_384 : f32 = x_32.x_OcclusionStrength;
  let x_386 : f32 = u_xlat43;
  u_xlat40 = ((x_382 * x_384) + x_386);
  let x_390 : f32 = x_32.x_Glossiness;
  u_xlat43 = (-(x_390) + 1.0f);
  let x_393 : vec3<f32> = u_xlat3;
  let x_394 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(x_393, x_394);
  let x_398 : f32 = u_xlat5.x;
  let x_400 : f32 = u_xlat5.x;
  u_xlat5.x = (x_398 + x_400);
  let x_403 : vec3<f32> = u_xlat2;
  let x_404 : vec4<f32> = u_xlat5;
  let x_408 : vec3<f32> = u_xlat3;
  let x_409 : vec3<f32> = ((x_403 * -(vec3<f32>(x_404.x, x_404.x, x_404.x))) + x_408);
  let x_410 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_409.x, x_409.y, x_409.z, x_410.w);
  let x_412 : f32 = u_xlat39;
  let x_416 : vec4<f32> = x_32.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_412, x_412, x_412) * vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_422 : f32 = x_32.unity_SpecCube0_ProbePosition.w;
  u_xlatb39 = (0.0f < x_422);
  let x_424 : bool = u_xlatb39;
  if (x_424) {
    let x_427 : vec4<f32> = u_xlat5;
    let x_429 : vec4<f32> = u_xlat5;
    u_xlat39 = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_429.x, x_429.y, x_429.z));
    let x_432 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_432);
    let x_435 : f32 = u_xlat39;
    let x_437 : vec4<f32> = u_xlat5;
    let x_439 : vec3<f32> = (vec3<f32>(x_435, x_435, x_435) * vec3<f32>(x_437.x, x_437.y, x_437.z));
    let x_440 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
    let x_443 : vec3<f32> = u_xlat4;
    let x_447 : vec4<f32> = x_32.unity_SpecCube0_BoxMax;
    u_xlat8 = (-(x_443) + vec3<f32>(x_447.x, x_447.y, x_447.z));
    let x_450 : vec3<f32> = u_xlat8;
    let x_451 : vec4<f32> = u_xlat7;
    u_xlat8 = (x_450 / vec3<f32>(x_451.x, x_451.y, x_451.z));
    let x_455 : vec3<f32> = u_xlat4;
    let x_459 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    let x_461 : vec3<f32> = (-(x_455) + vec3<f32>(x_459.x, x_459.y, x_459.z));
    let x_462 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
    let x_464 : vec4<f32> = u_xlat9;
    let x_466 : vec4<f32> = u_xlat7;
    let x_468 : vec3<f32> = (vec3<f32>(x_464.x, x_464.y, x_464.z) / vec3<f32>(x_466.x, x_466.y, x_466.z));
    let x_469 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
    let x_475 : vec4<f32> = u_xlat7;
    let x_478 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_475.x, x_475.y, x_475.z, x_475.x));
    u_xlatb10 = vec3<bool>(x_478.x, x_478.y, x_478.z);
    let x_481 : vec3<f32> = u_xlat8;
    hlslcc_movcTemp = x_481;
    let x_483 : bool = u_xlatb10.x;
    if (x_483) {
      let x_488 : f32 = u_xlat8.x;
      x_484 = x_488;
    } else {
      let x_491 : f32 = u_xlat9.x;
      x_484 = x_491;
    }
    let x_492 : f32 = x_484;
    hlslcc_movcTemp.x = x_492;
    let x_495 : bool = u_xlatb10.y;
    if (x_495) {
      let x_500 : f32 = u_xlat8.y;
      x_496 = x_500;
    } else {
      let x_503 : f32 = u_xlat9.y;
      x_496 = x_503;
    }
    let x_504 : f32 = x_496;
    hlslcc_movcTemp.y = x_504;
    let x_507 : bool = u_xlatb10.z;
    if (x_507) {
      let x_512 : f32 = u_xlat8.z;
      x_508 = x_512;
    } else {
      let x_515 : f32 = u_xlat9.z;
      x_508 = x_515;
    }
    let x_516 : f32 = x_508;
    hlslcc_movcTemp.z = x_516;
    let x_518 : vec3<f32> = hlslcc_movcTemp;
    u_xlat8 = x_518;
    let x_520 : f32 = u_xlat8.y;
    let x_522 : f32 = u_xlat8.x;
    u_xlat39 = min(x_520, x_522);
    let x_525 : f32 = u_xlat8.z;
    let x_526 : f32 = u_xlat39;
    u_xlat39 = min(x_525, x_526);
    let x_528 : vec3<f32> = u_xlat4;
    let x_530 : vec4<f32> = x_32.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_528 + -(vec3<f32>(x_530.x, x_530.y, x_530.z)));
    let x_534 : vec4<f32> = u_xlat7;
    let x_536 : f32 = u_xlat39;
    let x_539 : vec3<f32> = u_xlat8;
    let x_540 : vec3<f32> = ((vec3<f32>(x_534.x, x_534.y, x_534.z) * vec3<f32>(x_536, x_536, x_536)) + x_539);
    let x_541 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  } else {
    let x_544 : vec4<f32> = u_xlat5;
    let x_545 : vec3<f32> = vec3<f32>(x_544.x, x_544.y, x_544.z);
    let x_546 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  }
  let x_548 : f32 = u_xlat43;
  u_xlat39 = ((-(x_548) * 0.699999988f) + 1.700000048f);
  let x_554 : f32 = u_xlat39;
  let x_555 : f32 = u_xlat43;
  u_xlat39 = (x_554 * x_555);
  let x_557 : f32 = u_xlat39;
  u_xlat39 = (x_557 * 6.0f);
  let x_568 : vec4<f32> = u_xlat7;
  let x_570 : f32 = u_xlat39;
  let x_571 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_568.x, x_568.y, x_568.z), x_570);
  u_xlat7 = x_571;
  let x_574 : f32 = u_xlat7.w;
  u_xlat44 = (x_574 + -1.0f);
  let x_579 : f32 = x_32.unity_SpecCube0_HDR.w;
  let x_580 : f32 = u_xlat44;
  u_xlat44 = ((x_579 * x_580) + 1.0f);
  let x_583 : f32 = u_xlat44;
  u_xlat44 = log2(x_583);
  let x_585 : f32 = u_xlat44;
  let x_587 : f32 = x_32.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_585 * x_587);
  let x_589 : f32 = u_xlat44;
  u_xlat44 = exp2(x_589);
  let x_591 : f32 = u_xlat44;
  let x_593 : f32 = x_32.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_591 * x_593);
  let x_595 : vec4<f32> = u_xlat7;
  let x_597 : f32 = u_xlat44;
  u_xlat8 = (vec3<f32>(x_595.x, x_595.y, x_595.z) * vec3<f32>(x_597, x_597, x_597));
  let x_602 : f32 = x_32.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_602 < 0.999989986f);
  let x_605 : bool = u_xlatb45;
  if (x_605) {
    let x_610 : f32 = x_32.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_610);
    let x_612 : bool = u_xlatb45;
    if (x_612) {
      let x_616 : vec4<f32> = u_xlat5;
      let x_618 : vec4<f32> = u_xlat5;
      u_xlat45 = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_618.x, x_618.y, x_618.z));
      let x_621 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_621);
      let x_623 : vec4<f32> = u_xlat5;
      let x_625 : f32 = u_xlat45;
      let x_627 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_625, x_625, x_625));
      let x_628 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
      let x_631 : vec3<f32> = u_xlat4;
      let x_635 : vec4<f32> = x_32.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_631) + vec3<f32>(x_635.x, x_635.y, x_635.z));
      let x_638 : vec3<f32> = u_xlat10;
      let x_639 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_638 / vec3<f32>(x_639.x, x_639.y, x_639.z));
      let x_643 : vec3<f32> = u_xlat4;
      let x_647 : vec4<f32> = x_32.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_643) + vec3<f32>(x_647.x, x_647.y, x_647.z));
      let x_650 : vec3<f32> = u_xlat11;
      let x_651 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_650 / vec3<f32>(x_651.x, x_651.y, x_651.z));
      let x_655 : vec4<f32> = u_xlat9;
      let x_657 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_655.x, x_655.y, x_655.z, x_655.x));
      u_xlatb12 = vec3<bool>(x_657.x, x_657.y, x_657.z);
      let x_660 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_660;
      let x_662 : bool = u_xlatb12.x;
      if (x_662) {
        let x_667 : f32 = u_xlat10.x;
        x_663 = x_667;
      } else {
        let x_670 : f32 = u_xlat11.x;
        x_663 = x_670;
      }
      let x_671 : f32 = x_663;
      hlslcc_movcTemp_1.x = x_671;
      let x_674 : bool = u_xlatb12.y;
      if (x_674) {
        let x_679 : f32 = u_xlat10.y;
        x_675 = x_679;
      } else {
        let x_682 : f32 = u_xlat11.y;
        x_675 = x_682;
      }
      let x_683 : f32 = x_675;
      hlslcc_movcTemp_1.y = x_683;
      let x_686 : bool = u_xlatb12.z;
      if (x_686) {
        let x_691 : f32 = u_xlat10.z;
        x_687 = x_691;
      } else {
        let x_694 : f32 = u_xlat11.z;
        x_687 = x_694;
      }
      let x_695 : f32 = x_687;
      hlslcc_movcTemp_1.z = x_695;
      let x_697 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_697;
      let x_699 : f32 = u_xlat10.y;
      let x_701 : f32 = u_xlat10.x;
      u_xlat45 = min(x_699, x_701);
      let x_704 : f32 = u_xlat10.z;
      let x_705 : f32 = u_xlat45;
      u_xlat45 = min(x_704, x_705);
      let x_707 : vec3<f32> = u_xlat4;
      let x_709 : vec4<f32> = x_32.unity_SpecCube1_ProbePosition;
      u_xlat4 = (x_707 + -(vec3<f32>(x_709.x, x_709.y, x_709.z)));
      let x_713 : vec4<f32> = u_xlat9;
      let x_715 : f32 = u_xlat45;
      let x_718 : vec3<f32> = u_xlat4;
      let x_719 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(x_715, x_715, x_715)) + x_718);
      let x_720 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
    }
    let x_726 : vec4<f32> = u_xlat5;
    let x_728 : f32 = u_xlat39;
    let x_729 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_726.x, x_726.y, x_726.z), x_728);
    u_xlat9 = x_729;
    let x_731 : f32 = u_xlat9.w;
    u_xlat39 = (x_731 + -1.0f);
    let x_735 : f32 = x_32.unity_SpecCube1_HDR.w;
    let x_736 : f32 = u_xlat39;
    u_xlat39 = ((x_735 * x_736) + 1.0f);
    let x_739 : f32 = u_xlat39;
    u_xlat39 = log2(x_739);
    let x_741 : f32 = u_xlat39;
    let x_743 : f32 = x_32.unity_SpecCube1_HDR.y;
    u_xlat39 = (x_741 * x_743);
    let x_745 : f32 = u_xlat39;
    u_xlat39 = exp2(x_745);
    let x_747 : f32 = u_xlat39;
    let x_749 : f32 = x_32.unity_SpecCube1_HDR.x;
    u_xlat39 = (x_747 * x_749);
    let x_751 : vec4<f32> = u_xlat9;
    let x_753 : f32 = u_xlat39;
    u_xlat4 = (vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753, x_753, x_753));
    let x_756 : f32 = u_xlat44;
    let x_758 : vec4<f32> = u_xlat7;
    let x_761 : vec3<f32> = u_xlat4;
    let x_763 : vec3<f32> = ((vec3<f32>(x_756, x_756, x_756) * vec3<f32>(x_758.x, x_758.y, x_758.z)) + -(x_761));
    let x_764 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
    let x_767 : vec4<f32> = x_32.unity_SpecCube0_BoxMin;
    let x_769 : vec4<f32> = u_xlat5;
    let x_772 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_767.w, x_767.w, x_767.w) * vec3<f32>(x_769.x, x_769.y, x_769.z)) + x_772);
  }
  let x_774 : f32 = u_xlat40;
  let x_776 : vec3<f32> = u_xlat8;
  u_xlat4 = (vec3<f32>(x_774, x_774, x_774) * x_776);
  let x_778 : vec4<f32> = vs_TEXCOORD1;
  let x_781 : f32 = u_xlat41;
  let x_785 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_787 : vec3<f32> = ((-(vec3<f32>(x_778.x, x_778.y, x_778.z)) * vec3<f32>(x_781, x_781, x_781)) + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat5;
  let x_792 : vec4<f32> = u_xlat5;
  u_xlat39 = dot(vec3<f32>(x_790.x, x_790.y, x_790.z), vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : f32 = u_xlat39;
  u_xlat39 = max(x_795, 0.001f);
  let x_798 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_798);
  let x_800 : f32 = u_xlat39;
  let x_802 : vec4<f32> = u_xlat5;
  let x_804 : vec3<f32> = (vec3<f32>(x_800, x_800, x_800) * vec3<f32>(x_802.x, x_802.y, x_802.z));
  let x_805 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec3<f32> = u_xlat2;
  let x_808 : vec3<f32> = u_xlat3;
  u_xlat39 = dot(x_807, -(x_808));
  let x_811 : vec3<f32> = u_xlat2;
  let x_813 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  u_xlat40 = dot(x_811, vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : f32 = u_xlat40;
  u_xlat40 = clamp(x_816, 0.0f, 1.0f);
  let x_818 : vec3<f32> = u_xlat2;
  let x_819 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(x_818, vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_824 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_824, 0.0f, 1.0f);
  let x_829 : vec4<f32> = x_32.x_WorldSpaceLightPos0;
  let x_831 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(vec3<f32>(x_829.x, x_829.y, x_829.z), vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_836 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_836, 0.0f, 1.0f);
  let x_841 : f32 = u_xlat15.x;
  let x_843 : f32 = u_xlat15.x;
  u_xlat28 = (x_841 * x_843);
  let x_845 : f32 = u_xlat28;
  let x_847 : f32 = u_xlat43;
  u_xlat28 = dot(vec2<f32>(x_845, x_845), vec2<f32>(x_847, x_847));
  let x_850 : f32 = u_xlat28;
  u_xlat28 = (x_850 + -0.5f);
  let x_853 : f32 = u_xlat40;
  u_xlat41 = (-(x_853) + 1.0f);
  let x_856 : f32 = u_xlat41;
  let x_857 : f32 = u_xlat41;
  u_xlat3.x = (x_856 * x_857);
  let x_861 : f32 = u_xlat3.x;
  let x_863 : f32 = u_xlat3.x;
  u_xlat3.x = (x_861 * x_863);
  let x_866 : f32 = u_xlat41;
  let x_868 : f32 = u_xlat3.x;
  u_xlat41 = (x_866 * x_868);
  let x_870 : f32 = u_xlat28;
  let x_871 : f32 = u_xlat41;
  u_xlat41 = ((x_870 * x_871) + 1.0f);
  let x_874 : f32 = u_xlat39;
  u_xlat3.x = (-(abs(x_874)) + 1.0f);
  let x_881 : f32 = u_xlat3.x;
  let x_883 : f32 = u_xlat3.x;
  u_xlat16.x = (x_881 * x_883);
  let x_887 : f32 = u_xlat16.x;
  let x_889 : f32 = u_xlat16.x;
  u_xlat16.x = (x_887 * x_889);
  let x_893 : f32 = u_xlat3.x;
  let x_895 : f32 = u_xlat16.x;
  u_xlat3.x = (x_893 * x_895);
  let x_898 : f32 = u_xlat28;
  let x_900 : f32 = u_xlat3.x;
  u_xlat28 = ((x_898 * x_900) + 1.0f);
  let x_903 : f32 = u_xlat28;
  let x_904 : f32 = u_xlat41;
  u_xlat28 = (x_903 * x_904);
  let x_906 : f32 = u_xlat40;
  let x_907 : f32 = u_xlat28;
  u_xlat28 = (x_906 * x_907);
  let x_909 : f32 = u_xlat43;
  let x_910 : f32 = u_xlat43;
  u_xlat41 = (x_909 * x_910);
  let x_912 : f32 = u_xlat41;
  u_xlat41 = max(x_912, 0.002f);
  let x_915 : f32 = u_xlat41;
  u_xlat16.x = (-(x_915) + 1.0f);
  let x_920 : f32 = u_xlat39;
  let x_923 : f32 = u_xlat16.x;
  let x_925 : f32 = u_xlat41;
  u_xlat29 = ((abs(x_920) * x_923) + x_925);
  let x_927 : f32 = u_xlat40;
  let x_929 : f32 = u_xlat16.x;
  let x_931 : f32 = u_xlat41;
  u_xlat16.x = ((x_927 * x_929) + x_931);
  let x_934 : f32 = u_xlat39;
  let x_937 : f32 = u_xlat16.x;
  u_xlat39 = (abs(x_934) * x_937);
  let x_939 : f32 = u_xlat40;
  let x_940 : f32 = u_xlat29;
  let x_942 : f32 = u_xlat39;
  u_xlat39 = ((x_939 * x_940) + x_942);
  let x_944 : f32 = u_xlat39;
  u_xlat39 = (x_944 + 0.00001f);
  let x_947 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_947);
  let x_949 : f32 = u_xlat41;
  let x_950 : f32 = u_xlat41;
  u_xlat16.x = (x_949 * x_950);
  let x_954 : f32 = u_xlat2.x;
  let x_956 : f32 = u_xlat16.x;
  let x_959 : f32 = u_xlat2.x;
  u_xlat29 = ((x_954 * x_956) + -(x_959));
  let x_962 : f32 = u_xlat29;
  let x_964 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_962 * x_964) + 1.0f);
  let x_969 : f32 = u_xlat16.x;
  u_xlat16.x = (x_969 * 0.318309873f);
  let x_974 : f32 = u_xlat2.x;
  let x_976 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_974 * x_976) + 0.0000001f);
  let x_982 : f32 = u_xlat16.x;
  let x_984 : f32 = u_xlat2.x;
  u_xlat2.x = (x_982 / x_984);
  let x_987 : f32 = u_xlat39;
  let x_989 : f32 = u_xlat2.x;
  u_xlat39 = (x_987 * x_989);
  let x_991 : f32 = u_xlat40;
  let x_992 : f32 = u_xlat39;
  u_xlat39 = (x_991 * x_992);
  let x_994 : f32 = u_xlat39;
  u_xlat39 = (x_994 * 3.141592741f);
  let x_997 : f32 = u_xlat39;
  u_xlat39 = max(x_997, 0.0f);
  let x_999 : f32 = u_xlat41;
  let x_1000 : f32 = u_xlat41;
  u_xlat40 = ((x_999 * x_1000) + 1.0f);
  let x_1003 : f32 = u_xlat40;
  u_xlat40 = (1.0f / x_1003);
  let x_1005 : vec4<f32> = u_xlat0;
  let x_1007 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec3<f32>(x_1005.x, x_1005.y, x_1005.z), vec3<f32>(x_1007.x, x_1007.y, x_1007.z));
  let x_1013 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1013 == 0.0f));
  let x_1015 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1015);
  let x_1018 : f32 = u_xlat39;
  let x_1020 : f32 = u_xlat2.x;
  u_xlat39 = (x_1018 * x_1020);
  let x_1022 : f32 = u_xlat42;
  let x_1024 : f32 = x_32.x_Glossiness;
  u_xlat2.x = (x_1022 + x_1024);
  let x_1028 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1028, 0.0f, 1.0f);
  let x_1031 : f32 = u_xlat28;
  let x_1033 : vec3<f32> = u_xlat6;
  u_xlat16 = (vec3<f32>(x_1031, x_1031, x_1031) * x_1033);
  let x_1035 : vec3<f32> = u_xlat6;
  let x_1036 : f32 = u_xlat39;
  let x_1038 : vec3<f32> = (x_1035 * vec3<f32>(x_1036, x_1036, x_1036));
  let x_1039 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1042 : f32 = u_xlat15.x;
  u_xlat39 = (-(x_1042) + 1.0f);
  let x_1045 : f32 = u_xlat39;
  let x_1046 : f32 = u_xlat39;
  u_xlat15.x = (x_1045 * x_1046);
  let x_1050 : f32 = u_xlat15.x;
  let x_1052 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1050 * x_1052);
  let x_1055 : f32 = u_xlat39;
  let x_1057 : f32 = u_xlat15.x;
  u_xlat39 = (x_1055 * x_1057);
  let x_1059 : vec4<f32> = u_xlat0;
  u_xlat15 = (-(vec3<f32>(x_1059.x, x_1059.y, x_1059.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1064 : vec3<f32> = u_xlat15;
  let x_1065 : f32 = u_xlat39;
  let x_1068 : vec4<f32> = u_xlat0;
  u_xlat15 = ((x_1064 * vec3<f32>(x_1065, x_1065, x_1065)) + vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec3<f32> = u_xlat15;
  let x_1072 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_1071 * vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat1;
  let x_1077 : vec3<f32> = u_xlat16;
  let x_1079 : vec3<f32> = u_xlat15;
  let x_1080 : vec3<f32> = ((vec3<f32>(x_1075.x, x_1075.y, x_1075.z) * x_1077) + x_1079);
  let x_1081 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec3<f32> = u_xlat4;
  let x_1084 : f32 = u_xlat40;
  u_xlat15 = (x_1083 * vec3<f32>(x_1084, x_1084, x_1084));
  let x_1087 : vec4<f32> = u_xlat0;
  let x_1090 : vec3<f32> = u_xlat2;
  u_xlat16 = (-(vec3<f32>(x_1087.x, x_1087.y, x_1087.z)) + vec3<f32>(x_1090.x, x_1090.x, x_1090.x));
  let x_1093 : vec3<f32> = u_xlat3;
  let x_1095 : vec3<f32> = u_xlat16;
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1099 : vec3<f32> = ((vec3<f32>(x_1093.x, x_1093.x, x_1093.x) * x_1095) + vec3<f32>(x_1097.x, x_1097.y, x_1097.z));
  let x_1100 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1099.x, x_1099.y, x_1099.z, x_1100.w);
  let x_1102 : vec3<f32> = u_xlat15;
  let x_1103 : vec4<f32> = u_xlat0;
  let x_1106 : vec4<f32> = u_xlat1;
  let x_1108 : vec3<f32> = ((x_1102 * vec3<f32>(x_1103.x, x_1103.y, x_1103.z)) + vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

