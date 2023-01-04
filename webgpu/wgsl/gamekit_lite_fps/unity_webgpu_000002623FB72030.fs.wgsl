let      UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

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
}

struct unity_Builtins2Array_Type {
  unity_SHArArray : vec4<f32>,
  unity_SHAgArray : vec4<f32>,
  unity_SHAbArray : vec4<f32>,
  unity_SHBrArray : vec4<f32>,
  unity_SHBgArray : vec4<f32>,
  unity_SHBbArray : vec4<f32>,
  unity_SHCArray : vec4<f32>,
}

type Arr = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr,
}

var<private> u_xlati0 : i32;

var<private> vs_SV_InstanceID0 : u32;

@group(0) @binding(1) var<uniform> x_16 : UnityDrawCallInfo;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_34 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlatb42 : bool;

var<private> u_xlatb4 : bool;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var<uniform> x_259 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(4) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlatb41 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat0 : f32;

var<private> u_xlatb10 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlatb14 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_196 : vec3<f32>;
  var x_387 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_584 : f32;
  var x_596 : f32;
  var x_608 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_763 : f32;
  var x_775 : f32;
  var x_787 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : u32 = vs_SV_InstanceID0;
  let x_20 : i32 = x_16.unity_BaseInstanceID;
  u_xlati0 = (bitcast<i32>(x_12) + x_20);
  let x_28 : vec3<f32> = vs_TEXCOORD1;
  let x_37 : vec3<f32> = x_34.x_WorldSpaceCameraPos;
  u_xlat13 = (-(x_28) + x_37);
  let x_40 : vec3<f32> = u_xlat13;
  let x_41 : vec3<f32> = u_xlat13;
  u_xlat1.x = dot(x_40, x_41);
  let x_47 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_47);
  let x_51 : vec3<f32> = u_xlat13;
  let x_52 : vec3<f32> = u_xlat1;
  u_xlat14 = (x_51 * vec3<f32>(x_52.x, x_52.x, x_52.x));
  let x_69 : vec2<f32> = vs_TEXCOORD2;
  let x_70 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_69);
  u_xlat2 = vec3<f32>(x_70.x, x_70.y, x_70.z);
  let x_72 : vec3<f32> = u_xlat2;
  let x_76 : vec4<f32> = x_34.x_Color;
  u_xlat2 = (x_72 * vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_80 : vec3<f32> = u_xlat2;
  let x_83 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (x_80 * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_92 : f32 = x_34.unity_MatrixV[0i].z;
  u_xlat4.x = x_92;
  let x_96 : f32 = x_34.unity_MatrixV[1i].z;
  u_xlat4.y = x_96;
  let x_101 : f32 = x_34.unity_MatrixV[2i].z;
  u_xlat4.z = x_101;
  let x_104 : vec3<f32> = u_xlat13;
  let x_105 : vec4<f32> = u_xlat4;
  u_xlat41 = dot(x_104, vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec3<f32> = vs_TEXCOORD1;
  let x_111 : vec4<f32> = x_34.unity_ShadowFadeCenterAndType;
  let x_114 : vec3<f32> = (x_108 + -(vec3<f32>(x_111.x, x_111.y, x_111.z)));
  let x_115 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec4<f32> = u_xlat4;
  let x_120 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_118.x, x_118.y, x_118.z), vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_123);
  let x_125 : f32 = u_xlat41;
  let x_127 : f32 = u_xlat42;
  u_xlat42 = (-(x_125) + x_127);
  let x_131 : f32 = x_34.unity_ShadowFadeCenterAndType.w;
  let x_132 : f32 = u_xlat42;
  let x_134 : f32 = u_xlat41;
  u_xlat41 = ((x_131 * x_132) + x_134);
  let x_136 : f32 = u_xlat41;
  let x_139 : f32 = x_34.x_LightShadowData.z;
  let x_142 : f32 = x_34.x_LightShadowData.w;
  u_xlat41 = ((x_136 * x_139) + x_142);
  let x_144 : f32 = u_xlat41;
  u_xlat41 = clamp(x_144, 0.0f, 1.0f);
  let x_148 : i32 = u_xlati0;
  u_xlati0 = (x_148 * 7i);
  let x_156 : f32 = x_34.unity_ProbeVolumeParams.x;
  u_xlatb42 = (x_156 == 1.0f);
  let x_158 : bool = u_xlatb42;
  if (x_158) {
    let x_163 : f32 = x_34.unity_ProbeVolumeParams.y;
    u_xlatb4 = (x_163 == 1.0f);
    let x_166 : vec3<f32> = vs_TEXCOORD1;
    let x_170 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[1i];
    u_xlat17 = (vec3<f32>(x_166.y, x_166.y, x_166.y) * vec3<f32>(x_170.x, x_170.y, x_170.z));
    let x_174 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[0i];
    let x_176 : vec3<f32> = vs_TEXCOORD1;
    let x_179 : vec3<f32> = u_xlat17;
    u_xlat17 = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.x, x_176.x, x_176.x)) + x_179);
    let x_182 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[2i];
    let x_184 : vec3<f32> = vs_TEXCOORD1;
    let x_187 : vec3<f32> = u_xlat17;
    u_xlat17 = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.z, x_184.z, x_184.z)) + x_187);
    let x_189 : vec3<f32> = u_xlat17;
    let x_191 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[3i];
    u_xlat17 = (x_189 + vec3<f32>(x_191.x, x_191.y, x_191.z));
    let x_194 : bool = u_xlatb4;
    if (x_194) {
      let x_199 : vec3<f32> = u_xlat17;
      x_196 = x_199;
    } else {
      let x_201 : vec3<f32> = vs_TEXCOORD1;
      x_196 = x_201;
    }
    let x_202 : vec3<f32> = x_196;
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_205 : vec4<f32> = u_xlat4;
    let x_209 : vec3<f32> = x_34.unity_ProbeVolumeMin;
    let x_211 : vec3<f32> = (vec3<f32>(x_205.x, x_205.y, x_205.z) + -(x_209));
    let x_212 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
    let x_214 : vec4<f32> = u_xlat4;
    let x_218 : vec3<f32> = x_34.unity_ProbeVolumeSizeInv;
    let x_219 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * x_218);
    let x_220 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_220.x, x_219.x, x_219.y, x_219.z);
    let x_223 : f32 = u_xlat4.y;
    u_xlat17.x = ((x_223 * 0.25f) + 0.75f);
    let x_231 : f32 = x_34.unity_ProbeVolumeParams.z;
    u_xlat5.x = ((x_231 * 0.5f) + 0.75f);
    let x_237 : f32 = u_xlat17.x;
    let x_239 : f32 = u_xlat5.x;
    u_xlat4.x = max(x_237, x_239);
    let x_250 : vec4<f32> = u_xlat4;
    let x_252 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_250.x, x_250.z, x_250.w));
    u_xlat4 = x_252;
  } else {
    let x_260 : i32 = u_xlati0;
    let x_264 : vec4<f32> = x_259.unity_Builtins2Array[(x_260 / 7i)].unity_SHCArray;
    u_xlat4 = vec4<f32>(x_264.w, x_264.w, x_264.w, x_264.w);
  }
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = x_34.unity_OcclusionMaskSelector;
  u_xlat4.x = dot(x_266, x_268);
  let x_272 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_272, 0.0f, 1.0f);
  let x_276 : vec4<f32> = vs_TEXCOORD5;
  let x_278 : vec4<f32> = vs_TEXCOORD5;
  let x_280 : vec2<f32> = (vec2<f32>(x_276.x, x_276.y) / vec2<f32>(x_278.w, x_278.w));
  let x_281 : vec3<f32> = u_xlat17;
  u_xlat17 = vec3<f32>(x_280.x, x_280.y, x_281.z);
  let x_288 : vec3<f32> = u_xlat17;
  let x_290 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_288.x, x_288.y));
  u_xlat17.x = x_290.x;
  let x_294 : f32 = u_xlat17.x;
  let x_297 : f32 = u_xlat4.x;
  u_xlat4.x = (-(x_294) + x_297);
  let x_300 : f32 = u_xlat41;
  let x_302 : f32 = u_xlat4.x;
  let x_305 : f32 = u_xlat17.x;
  u_xlat41 = ((x_300 * x_302) + x_305);
  let x_309 : f32 = x_34.x_Glossiness;
  u_xlat4.x = (-(x_309) + 1.0f);
  let x_313 : vec3<f32> = u_xlat14;
  let x_316 : vec3<f32> = vs_TEXCOORD0;
  u_xlat17.x = dot(-(x_313), x_316);
  let x_320 : f32 = u_xlat17.x;
  let x_322 : f32 = u_xlat17.x;
  u_xlat17.x = (x_320 + x_322);
  let x_325 : vec3<f32> = vs_TEXCOORD0;
  let x_326 : vec3<f32> = u_xlat17;
  let x_330 : vec3<f32> = u_xlat14;
  u_xlat17 = ((x_325 * -(vec3<f32>(x_326.x, x_326.x, x_326.x))) + -(x_330));
  let x_333 : f32 = u_xlat41;
  let x_337 : vec4<f32> = x_34.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_333, x_333, x_333) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : bool = u_xlatb42;
  if (x_340) {
    let x_345 : f32 = x_34.unity_ProbeVolumeParams.y;
    u_xlatb41 = (x_345 == 1.0f);
    let x_348 : vec3<f32> = vs_TEXCOORD1;
    let x_351 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[1i];
    let x_353 : vec3<f32> = (vec3<f32>(x_348.y, x_348.y, x_348.y) * vec3<f32>(x_351.x, x_351.y, x_351.z));
    let x_354 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
    let x_357 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[0i];
    let x_359 : vec3<f32> = vs_TEXCOORD1;
    let x_362 : vec4<f32> = u_xlat6;
    let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.x, x_359.x)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
    let x_365 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_368 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[2i];
    let x_370 : vec3<f32> = vs_TEXCOORD1;
    let x_373 : vec4<f32> = u_xlat6;
    let x_375 : vec3<f32> = ((vec3<f32>(x_368.x, x_368.y, x_368.z) * vec3<f32>(x_370.z, x_370.z, x_370.z)) + vec3<f32>(x_373.x, x_373.y, x_373.z));
    let x_376 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
    let x_378 : vec4<f32> = u_xlat6;
    let x_381 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[3i];
    let x_383 : vec3<f32> = (vec3<f32>(x_378.x, x_378.y, x_378.z) + vec3<f32>(x_381.x, x_381.y, x_381.z));
    let x_384 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_386 : bool = u_xlatb41;
    if (x_386) {
      let x_390 : vec4<f32> = u_xlat6;
      x_387 = vec3<f32>(x_390.x, x_390.y, x_390.z);
    } else {
      let x_393 : vec3<f32> = vs_TEXCOORD1;
      x_387 = x_393;
    }
    let x_394 : vec3<f32> = x_387;
    let x_395 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
    let x_397 : vec4<f32> = u_xlat6;
    let x_400 : vec3<f32> = x_34.unity_ProbeVolumeMin;
    let x_402 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) + -(x_400));
    let x_403 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_405 : vec4<f32> = u_xlat6;
    let x_408 : vec3<f32> = x_34.unity_ProbeVolumeSizeInv;
    let x_409 : vec3<f32> = (vec3<f32>(x_405.x, x_405.y, x_405.z) * x_408);
    let x_410 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_410.x, x_409.x, x_409.y, x_409.z);
    let x_413 : f32 = u_xlat6.y;
    u_xlat41 = (x_413 * 0.25f);
    let x_416 : f32 = x_34.unity_ProbeVolumeParams.z;
    u_xlat42 = (x_416 * 0.5f);
    let x_420 : f32 = x_34.unity_ProbeVolumeParams.z;
    u_xlat44 = ((-(x_420) * 0.5f) + 0.25f);
    let x_424 : f32 = u_xlat41;
    let x_425 : f32 = u_xlat42;
    u_xlat41 = max(x_424, x_425);
    let x_427 : f32 = u_xlat44;
    let x_428 : f32 = u_xlat41;
    u_xlat6.x = min(x_427, x_428);
    let x_435 : vec4<f32> = u_xlat6;
    let x_437 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_435.x, x_435.z, x_435.w));
    u_xlat7 = x_437;
    let x_439 : vec4<f32> = u_xlat6;
    let x_442 : vec3<f32> = (vec3<f32>(x_439.x, x_439.z, x_439.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_443 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
    let x_448 : vec4<f32> = u_xlat8;
    let x_450 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_448.x, x_448.y, x_448.z));
    u_xlat8 = x_450;
    let x_451 : vec4<f32> = u_xlat6;
    let x_454 : vec3<f32> = (vec3<f32>(x_451.x, x_451.z, x_451.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_455 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
    let x_460 : vec4<f32> = u_xlat6;
    let x_462 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_460.x, x_460.y, x_460.z));
    u_xlat6 = x_462;
    let x_464 : vec3<f32> = vs_TEXCOORD0;
    let x_465 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
    u_xlat9.w = 1.0f;
    let x_468 : vec4<f32> = u_xlat7;
    let x_469 : vec4<f32> = u_xlat9;
    u_xlat7.x = dot(x_468, x_469);
    let x_472 : vec4<f32> = u_xlat8;
    let x_473 : vec4<f32> = u_xlat9;
    u_xlat7.y = dot(x_472, x_473);
    let x_476 : vec4<f32> = u_xlat6;
    let x_477 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(x_476, x_477);
  } else {
    let x_481 : vec3<f32> = vs_TEXCOORD0;
    let x_482 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
    u_xlat6.w = 1.0f;
    let x_485 : i32 = u_xlati0;
    let x_488 : vec4<f32> = x_259.unity_Builtins2Array[(x_485 / 7i)].unity_SHArArray;
    let x_489 : vec4<f32> = u_xlat6;
    u_xlat7.x = dot(x_488, x_489);
    let x_492 : i32 = u_xlati0;
    let x_495 : vec4<f32> = x_259.unity_Builtins2Array[(x_492 / 7i)].unity_SHAgArray;
    let x_496 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_495, x_496);
    let x_499 : i32 = u_xlati0;
    let x_502 : vec4<f32> = x_259.unity_Builtins2Array[(x_499 / 7i)].unity_SHAbArray;
    let x_503 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_502, x_503);
  }
  let x_506 : vec4<f32> = u_xlat7;
  let x_509 : vec3<f32> = vs_TEXCOORD3;
  let x_510 : vec3<f32> = (vec3<f32>(x_506.x, x_506.y, x_506.z) + x_509);
  let x_511 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  let x_513 : vec4<f32> = u_xlat6;
  let x_516 : vec3<f32> = max(vec3<f32>(x_513.x, x_513.y, x_513.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_517 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_522 : f32 = x_34.unity_SpecCube0_ProbePosition.w;
  u_xlatb0 = (0.0f < x_522);
  let x_524 : bool = u_xlatb0;
  if (x_524) {
    let x_528 : vec3<f32> = u_xlat17;
    let x_529 : vec3<f32> = u_xlat17;
    u_xlat0 = dot(x_528, x_529);
    let x_531 : f32 = u_xlat0;
    u_xlat0 = inverseSqrt(x_531);
    let x_533 : f32 = u_xlat0;
    let x_535 : vec3<f32> = u_xlat17;
    let x_536 : vec3<f32> = (vec3<f32>(x_533, x_533, x_533) * x_535);
    let x_537 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : vec3<f32> = vs_TEXCOORD1;
    let x_542 : vec4<f32> = x_34.unity_SpecCube0_BoxMax;
    let x_544 : vec3<f32> = (-(x_539) + vec3<f32>(x_542.x, x_542.y, x_542.z));
    let x_545 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
    let x_547 : vec4<f32> = u_xlat8;
    let x_549 : vec4<f32> = u_xlat7;
    let x_551 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) / vec3<f32>(x_549.x, x_549.y, x_549.z));
    let x_552 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
    let x_554 : vec3<f32> = vs_TEXCOORD1;
    let x_557 : vec4<f32> = x_34.unity_SpecCube0_BoxMin;
    let x_559 : vec3<f32> = (-(x_554) + vec3<f32>(x_557.x, x_557.y, x_557.z));
    let x_560 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
    let x_562 : vec4<f32> = u_xlat9;
    let x_564 : vec4<f32> = u_xlat7;
    let x_566 : vec3<f32> = (vec3<f32>(x_562.x, x_562.y, x_562.z) / vec3<f32>(x_564.x, x_564.y, x_564.z));
    let x_567 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
    let x_573 : vec4<f32> = u_xlat7;
    let x_576 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_573.x, x_573.y, x_573.z, x_573.x));
    u_xlatb10 = vec3<bool>(x_576.x, x_576.y, x_576.z);
    let x_580 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_580;
    let x_582 : bool = u_xlatb10.x;
    if (x_582) {
      let x_588 : f32 = u_xlat8.x;
      x_584 = x_588;
    } else {
      let x_591 : f32 = u_xlat9.x;
      x_584 = x_591;
    }
    let x_592 : f32 = x_584;
    hlslcc_movcTemp.x = x_592;
    let x_595 : bool = u_xlatb10.y;
    if (x_595) {
      let x_600 : f32 = u_xlat8.y;
      x_596 = x_600;
    } else {
      let x_603 : f32 = u_xlat9.y;
      x_596 = x_603;
    }
    let x_604 : f32 = x_596;
    hlslcc_movcTemp.y = x_604;
    let x_607 : bool = u_xlatb10.z;
    if (x_607) {
      let x_612 : f32 = u_xlat8.z;
      x_608 = x_612;
    } else {
      let x_615 : f32 = u_xlat9.z;
      x_608 = x_615;
    }
    let x_616 : f32 = x_608;
    hlslcc_movcTemp.z = x_616;
    let x_618 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_618;
    let x_620 : f32 = u_xlat8.y;
    let x_622 : f32 = u_xlat8.x;
    u_xlat0 = min(x_620, x_622);
    let x_625 : f32 = u_xlat8.z;
    let x_626 : f32 = u_xlat0;
    u_xlat0 = min(x_625, x_626);
    let x_628 : vec3<f32> = vs_TEXCOORD1;
    let x_630 : vec4<f32> = x_34.unity_SpecCube0_ProbePosition;
    let x_633 : vec3<f32> = (x_628 + -(vec3<f32>(x_630.x, x_630.y, x_630.z)));
    let x_634 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
    let x_636 : vec4<f32> = u_xlat7;
    let x_638 : f32 = u_xlat0;
    let x_641 : vec4<f32> = u_xlat8;
    let x_643 : vec3<f32> = ((vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(x_638, x_638, x_638)) + vec3<f32>(x_641.x, x_641.y, x_641.z));
    let x_644 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  } else {
    let x_647 : vec3<f32> = u_xlat17;
    let x_648 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  }
  let x_651 : f32 = u_xlat4.x;
  u_xlat0 = ((-(x_651) * 0.699999988f) + 1.700000048f);
  let x_657 : f32 = u_xlat0;
  let x_659 : f32 = u_xlat4.x;
  u_xlat0 = (x_657 * x_659);
  let x_661 : f32 = u_xlat0;
  u_xlat0 = (x_661 * 6.0f);
  let x_672 : vec4<f32> = u_xlat7;
  let x_674 : f32 = u_xlat0;
  let x_675 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_672.x, x_672.y, x_672.z), x_674);
  u_xlat7 = x_675;
  let x_677 : f32 = u_xlat7.w;
  u_xlat41 = (x_677 + -1.0f);
  let x_682 : f32 = x_34.unity_SpecCube0_HDR.w;
  let x_683 : f32 = u_xlat41;
  u_xlat41 = ((x_682 * x_683) + 1.0f);
  let x_686 : f32 = u_xlat41;
  u_xlat41 = log2(x_686);
  let x_688 : f32 = u_xlat41;
  let x_690 : f32 = x_34.unity_SpecCube0_HDR.y;
  u_xlat41 = (x_688 * x_690);
  let x_692 : f32 = u_xlat41;
  u_xlat41 = exp2(x_692);
  let x_694 : f32 = u_xlat41;
  let x_696 : f32 = x_34.unity_SpecCube0_HDR.x;
  u_xlat41 = (x_694 * x_696);
  let x_698 : vec4<f32> = u_xlat7;
  let x_700 : f32 = u_xlat41;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_700, x_700, x_700));
  let x_703 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_706 : f32 = x_34.unity_SpecCube0_BoxMin.w;
  u_xlatb42 = (x_706 < 0.999989986f);
  let x_709 : bool = u_xlatb42;
  if (x_709) {
    let x_714 : f32 = x_34.unity_SpecCube1_ProbePosition.w;
    u_xlatb42 = (0.0f < x_714);
    let x_716 : bool = u_xlatb42;
    if (x_716) {
      let x_719 : vec3<f32> = u_xlat17;
      let x_720 : vec3<f32> = u_xlat17;
      u_xlat42 = dot(x_719, x_720);
      let x_722 : f32 = u_xlat42;
      u_xlat42 = inverseSqrt(x_722);
      let x_724 : f32 = u_xlat42;
      let x_726 : vec3<f32> = u_xlat17;
      let x_727 : vec3<f32> = (vec3<f32>(x_724, x_724, x_724) * x_726);
      let x_728 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
      let x_731 : vec3<f32> = vs_TEXCOORD1;
      let x_735 : vec4<f32> = x_34.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_731) + vec3<f32>(x_735.x, x_735.y, x_735.z));
      let x_738 : vec3<f32> = u_xlat10;
      let x_739 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_738 / vec3<f32>(x_739.x, x_739.y, x_739.z));
      let x_743 : vec3<f32> = vs_TEXCOORD1;
      let x_747 : vec4<f32> = x_34.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_743) + vec3<f32>(x_747.x, x_747.y, x_747.z));
      let x_750 : vec3<f32> = u_xlat11;
      let x_751 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_750 / vec3<f32>(x_751.x, x_751.y, x_751.z));
      let x_755 : vec4<f32> = u_xlat9;
      let x_757 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_755.x, x_755.y, x_755.z, x_755.x));
      u_xlatb12 = vec3<bool>(x_757.x, x_757.y, x_757.z);
      let x_760 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_760;
      let x_762 : bool = u_xlatb12.x;
      if (x_762) {
        let x_767 : f32 = u_xlat10.x;
        x_763 = x_767;
      } else {
        let x_770 : f32 = u_xlat11.x;
        x_763 = x_770;
      }
      let x_771 : f32 = x_763;
      hlslcc_movcTemp_1.x = x_771;
      let x_774 : bool = u_xlatb12.y;
      if (x_774) {
        let x_779 : f32 = u_xlat10.y;
        x_775 = x_779;
      } else {
        let x_782 : f32 = u_xlat11.y;
        x_775 = x_782;
      }
      let x_783 : f32 = x_775;
      hlslcc_movcTemp_1.y = x_783;
      let x_786 : bool = u_xlatb12.z;
      if (x_786) {
        let x_791 : f32 = u_xlat10.z;
        x_787 = x_791;
      } else {
        let x_794 : f32 = u_xlat11.z;
        x_787 = x_794;
      }
      let x_795 : f32 = x_787;
      hlslcc_movcTemp_1.z = x_795;
      let x_797 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_797;
      let x_799 : f32 = u_xlat10.y;
      let x_801 : f32 = u_xlat10.x;
      u_xlat42 = min(x_799, x_801);
      let x_804 : f32 = u_xlat10.z;
      let x_805 : f32 = u_xlat42;
      u_xlat42 = min(x_804, x_805);
      let x_807 : vec3<f32> = vs_TEXCOORD1;
      let x_809 : vec4<f32> = x_34.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_807 + -(vec3<f32>(x_809.x, x_809.y, x_809.z)));
      let x_813 : vec4<f32> = u_xlat9;
      let x_815 : f32 = u_xlat42;
      let x_818 : vec3<f32> = u_xlat10;
      u_xlat17 = ((vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_815, x_815, x_815)) + x_818);
    }
    let x_824 : vec3<f32> = u_xlat17;
    let x_825 : f32 = u_xlat0;
    let x_826 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_824, x_825);
    u_xlat9 = x_826;
    let x_828 : f32 = u_xlat9.w;
    u_xlat0 = (x_828 + -1.0f);
    let x_832 : f32 = x_34.unity_SpecCube1_HDR.w;
    let x_833 : f32 = u_xlat0;
    u_xlat0 = ((x_832 * x_833) + 1.0f);
    let x_836 : f32 = u_xlat0;
    u_xlat0 = log2(x_836);
    let x_838 : f32 = u_xlat0;
    let x_840 : f32 = x_34.unity_SpecCube1_HDR.y;
    u_xlat0 = (x_838 * x_840);
    let x_842 : f32 = u_xlat0;
    u_xlat0 = exp2(x_842);
    let x_844 : f32 = u_xlat0;
    let x_846 : f32 = x_34.unity_SpecCube1_HDR.x;
    u_xlat0 = (x_844 * x_846);
    let x_848 : vec4<f32> = u_xlat9;
    let x_850 : f32 = u_xlat0;
    u_xlat17 = (vec3<f32>(x_848.x, x_848.y, x_848.z) * vec3<f32>(x_850, x_850, x_850));
    let x_853 : f32 = u_xlat41;
    let x_855 : vec4<f32> = u_xlat7;
    let x_858 : vec3<f32> = u_xlat17;
    let x_860 : vec3<f32> = ((vec3<f32>(x_853, x_853, x_853) * vec3<f32>(x_855.x, x_855.y, x_855.z)) + -(x_858));
    let x_861 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
    let x_864 : vec4<f32> = x_34.unity_SpecCube0_BoxMin;
    let x_866 : vec4<f32> = u_xlat7;
    let x_869 : vec3<f32> = u_xlat17;
    let x_870 : vec3<f32> = ((vec3<f32>(x_864.w, x_864.w, x_864.w) * vec3<f32>(x_866.x, x_866.y, x_866.z)) + x_869);
    let x_871 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  }
  let x_873 : vec3<f32> = vs_TEXCOORD0;
  let x_874 : vec3<f32> = vs_TEXCOORD0;
  u_xlat0 = dot(x_873, x_874);
  let x_876 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_876);
  let x_878 : f32 = u_xlat0;
  let x_880 : vec3<f32> = vs_TEXCOORD0;
  u_xlat17 = (vec3<f32>(x_878, x_878, x_878) * x_880);
  let x_882 : vec3<f32> = u_xlat2;
  let x_883 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_882 * vec3<f32>(x_883.x, x_883.y, x_883.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_891 : f32 = x_34.x_Metallic;
  let x_893 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_891, x_891, x_891) * x_893) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_899 : f32 = x_34.x_Metallic;
  u_xlat0 = ((-(x_899) * 0.959999979f) + 0.959999979f);
  let x_904 : f32 = u_xlat0;
  let x_906 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_904, x_904, x_904) * x_906);
  let x_908 : vec3<f32> = u_xlat13;
  let x_909 : vec3<f32> = u_xlat1;
  let x_913 : vec4<f32> = x_34.x_WorldSpaceLightPos0;
  u_xlat13 = ((x_908 * vec3<f32>(x_909.x, x_909.x, x_909.x)) + vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec3<f32> = u_xlat13;
  let x_917 : vec3<f32> = u_xlat13;
  u_xlat1.x = dot(x_916, x_917);
  let x_921 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_921, 0.001f);
  let x_926 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_926);
  let x_929 : vec3<f32> = u_xlat13;
  let x_930 : vec3<f32> = u_xlat1;
  u_xlat13 = (x_929 * vec3<f32>(x_930.x, x_930.x, x_930.x));
  let x_933 : vec3<f32> = u_xlat17;
  let x_934 : vec3<f32> = u_xlat14;
  u_xlat1.x = dot(x_933, x_934);
  let x_937 : vec3<f32> = u_xlat17;
  let x_939 : vec4<f32> = x_34.x_WorldSpaceLightPos0;
  u_xlat14.x = dot(x_937, vec3<f32>(x_939.x, x_939.y, x_939.z));
  let x_944 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_944, 0.0f, 1.0f);
  let x_948 : vec3<f32> = u_xlat17;
  let x_949 : vec3<f32> = u_xlat13;
  u_xlat27 = dot(x_948, x_949);
  let x_951 : f32 = u_xlat27;
  u_xlat27 = clamp(x_951, 0.0f, 1.0f);
  let x_954 : vec4<f32> = x_34.x_WorldSpaceLightPos0;
  let x_956 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(vec3<f32>(x_954.x, x_954.y, x_954.z), x_956);
  let x_960 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_960, 0.0f, 1.0f);
  let x_965 : f32 = u_xlat13.x;
  let x_967 : f32 = u_xlat13.x;
  u_xlat26 = (x_965 * x_967);
  let x_969 : f32 = u_xlat26;
  let x_971 : vec4<f32> = u_xlat4;
  u_xlat26 = dot(vec2<f32>(x_969, x_969), vec2<f32>(x_971.x, x_971.x));
  let x_974 : f32 = u_xlat26;
  u_xlat26 = (x_974 + -0.5f);
  let x_979 : f32 = u_xlat14.x;
  u_xlat39 = (-(x_979) + 1.0f);
  let x_983 : f32 = u_xlat39;
  let x_984 : f32 = u_xlat39;
  u_xlat40 = (x_983 * x_984);
  let x_986 : f32 = u_xlat40;
  let x_987 : f32 = u_xlat40;
  u_xlat40 = (x_986 * x_987);
  let x_989 : f32 = u_xlat39;
  let x_990 : f32 = u_xlat40;
  u_xlat39 = (x_989 * x_990);
  let x_992 : f32 = u_xlat26;
  let x_993 : f32 = u_xlat39;
  u_xlat39 = ((x_992 * x_993) + 1.0f);
  let x_997 : f32 = u_xlat1.x;
  u_xlat40 = (-(abs(x_997)) + 1.0f);
  let x_1001 : f32 = u_xlat40;
  let x_1002 : f32 = u_xlat40;
  u_xlat41 = (x_1001 * x_1002);
  let x_1004 : f32 = u_xlat41;
  let x_1005 : f32 = u_xlat41;
  u_xlat41 = (x_1004 * x_1005);
  let x_1007 : f32 = u_xlat40;
  let x_1008 : f32 = u_xlat41;
  u_xlat40 = (x_1007 * x_1008);
  let x_1010 : f32 = u_xlat26;
  let x_1011 : f32 = u_xlat40;
  u_xlat26 = ((x_1010 * x_1011) + 1.0f);
  let x_1014 : f32 = u_xlat26;
  let x_1015 : f32 = u_xlat39;
  u_xlat26 = (x_1014 * x_1015);
  let x_1018 : f32 = u_xlat14.x;
  let x_1019 : f32 = u_xlat26;
  u_xlat26 = (x_1018 * x_1019);
  let x_1022 : f32 = u_xlat4.x;
  let x_1024 : f32 = u_xlat4.x;
  u_xlat39 = (x_1022 * x_1024);
  let x_1026 : f32 = u_xlat39;
  u_xlat39 = max(x_1026, 0.002f);
  let x_1029 : f32 = u_xlat39;
  u_xlat41 = (-(x_1029) + 1.0f);
  let x_1033 : f32 = u_xlat1.x;
  let x_1035 : f32 = u_xlat41;
  let x_1037 : f32 = u_xlat39;
  u_xlat42 = ((abs(x_1033) * x_1035) + x_1037);
  let x_1040 : f32 = u_xlat14.x;
  let x_1041 : f32 = u_xlat41;
  let x_1043 : f32 = u_xlat39;
  u_xlat41 = ((x_1040 * x_1041) + x_1043);
  let x_1046 : f32 = u_xlat1.x;
  let x_1048 : f32 = u_xlat41;
  u_xlat1.x = (abs(x_1046) * x_1048);
  let x_1052 : f32 = u_xlat14.x;
  let x_1053 : f32 = u_xlat42;
  let x_1056 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1052 * x_1053) + x_1056);
  let x_1060 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1060 + 0.00001f);
  let x_1065 : f32 = u_xlat1.x;
  u_xlat1.x = (0.5f / x_1065);
  let x_1068 : f32 = u_xlat39;
  let x_1069 : f32 = u_xlat39;
  u_xlat41 = (x_1068 * x_1069);
  let x_1071 : f32 = u_xlat27;
  let x_1072 : f32 = u_xlat41;
  let x_1074 : f32 = u_xlat27;
  u_xlat42 = ((x_1071 * x_1072) + -(x_1074));
  let x_1077 : f32 = u_xlat42;
  let x_1078 : f32 = u_xlat27;
  u_xlat27 = ((x_1077 * x_1078) + 1.0f);
  let x_1081 : f32 = u_xlat41;
  u_xlat41 = (x_1081 * 0.318309873f);
  let x_1084 : f32 = u_xlat27;
  let x_1085 : f32 = u_xlat27;
  u_xlat27 = ((x_1084 * x_1085) + 0.0000001f);
  let x_1089 : f32 = u_xlat41;
  let x_1090 : f32 = u_xlat27;
  u_xlat27 = (x_1089 / x_1090);
  let x_1092 : f32 = u_xlat27;
  let x_1094 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1092 * x_1094);
  let x_1098 : f32 = u_xlat14.x;
  let x_1100 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1098 * x_1100);
  let x_1104 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1104 * 3.141592741f);
  let x_1109 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1109, 0.0f);
  let x_1112 : f32 = u_xlat39;
  let x_1113 : f32 = u_xlat39;
  u_xlat39 = ((x_1112 * x_1113) + 1.0f);
  let x_1116 : f32 = u_xlat39;
  u_xlat39 = (1.0f / x_1116);
  let x_1118 : vec3<f32> = u_xlat2;
  let x_1119 : vec3<f32> = u_xlat2;
  u_xlat14.x = dot(x_1118, x_1119);
  let x_1124 : f32 = u_xlat14.x;
  u_xlatb14 = !((x_1124 == 0.0f));
  let x_1126 : bool = u_xlatb14;
  u_xlat14.x = select(0.0f, 1.0f, x_1126);
  let x_1130 : f32 = u_xlat14.x;
  let x_1132 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1130 * x_1132);
  let x_1135 : f32 = u_xlat0;
  let x_1138 : f32 = x_34.x_Glossiness;
  u_xlat0 = (-(x_1135) + x_1138);
  let x_1140 : f32 = u_xlat0;
  u_xlat0 = (x_1140 + 1.0f);
  let x_1142 : f32 = u_xlat0;
  u_xlat0 = clamp(x_1142, 0.0f, 1.0f);
  let x_1144 : vec3<f32> = u_xlat5;
  let x_1145 : f32 = u_xlat26;
  let x_1148 : vec4<f32> = u_xlat6;
  let x_1150 : vec3<f32> = ((x_1144 * vec3<f32>(x_1145, x_1145, x_1145)) + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec3<f32> = u_xlat5;
  let x_1154 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1153 * vec3<f32>(x_1154.x, x_1154.x, x_1154.x));
  let x_1158 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_1158) + 1.0f);
  let x_1163 : f32 = u_xlat13.x;
  let x_1165 : f32 = u_xlat13.x;
  u_xlat26 = (x_1163 * x_1165);
  let x_1167 : f32 = u_xlat26;
  let x_1168 : f32 = u_xlat26;
  u_xlat26 = (x_1167 * x_1168);
  let x_1171 : f32 = u_xlat13.x;
  let x_1172 : f32 = u_xlat26;
  u_xlat13.x = (x_1171 * x_1172);
  let x_1175 : vec3<f32> = u_xlat2;
  u_xlat5 = (-(x_1175) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1179 : vec3<f32> = u_xlat5;
  let x_1180 : vec3<f32> = u_xlat13;
  let x_1183 : vec3<f32> = u_xlat2;
  u_xlat5 = ((x_1179 * vec3<f32>(x_1180.x, x_1180.x, x_1180.x)) + x_1183);
  let x_1185 : vec3<f32> = u_xlat1;
  let x_1186 : vec3<f32> = u_xlat5;
  u_xlat1 = (x_1185 * x_1186);
  let x_1188 : vec3<f32> = u_xlat3;
  let x_1189 : vec4<f32> = u_xlat4;
  let x_1192 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1188 * vec3<f32>(x_1189.x, x_1189.y, x_1189.z)) + x_1192);
  let x_1194 : vec4<f32> = u_xlat8;
  let x_1196 : f32 = u_xlat39;
  u_xlat13 = (vec3<f32>(x_1194.x, x_1194.y, x_1194.z) * vec3<f32>(x_1196, x_1196, x_1196));
  let x_1199 : vec3<f32> = u_xlat2;
  let x_1201 : f32 = u_xlat0;
  u_xlat3 = (-(x_1199) + vec3<f32>(x_1201, x_1201, x_1201));
  let x_1204 : f32 = u_xlat40;
  let x_1206 : vec3<f32> = u_xlat3;
  let x_1208 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_1204, x_1204, x_1204) * x_1206) + x_1208);
  let x_1212 : vec3<f32> = u_xlat13;
  let x_1213 : vec3<f32> = u_xlat2;
  let x_1215 : vec3<f32> = u_xlat1;
  let x_1216 : vec3<f32> = ((x_1212 * x_1213) + x_1215);
  let x_1217 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

