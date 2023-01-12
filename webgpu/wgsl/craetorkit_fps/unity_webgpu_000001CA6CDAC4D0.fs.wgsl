const    UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_AmbientColor : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
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

var<private> vs_SV_InstanceID0 : u32;

@group(1) @binding(1) var<uniform> x_16 : UnityDrawCallInfo;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_52 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(8) var sampler_Normal : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(1) @binding(2) var<uniform> x_322 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlati0 : i32;
  var u_xlat1 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat47 : f32;
  var u_xlatb47 : bool;
  var u_xlatb48 : bool;
  var u_xlat6 : vec4<f32>;
  var x_261 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var x_451 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat0 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_643 : f32;
  var x_655 : f32;
  var x_667 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_827 : f32;
  var x_839 : f32;
  var x_851 : f32;
  var u_xlat17 : f32;
  var u_xlat30 : f32;
  var u_xlat45 : f32;
  var u_xlat32 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : u32 = vs_SV_InstanceID0;
  let x_20 : i32 = x_16.unity_BaseInstanceID;
  u_xlati0 = (bitcast<i32>(x_12) + x_20);
  let x_32 : f32 = vs_TEXCOORD1.w;
  u_xlat1.x = x_32;
  let x_38 : f32 = vs_TEXCOORD2.w;
  u_xlat1.y = x_38;
  let x_43 : f32 = vs_TEXCOORD3.w;
  u_xlat1.z = x_43;
  let x_47 : vec3<f32> = u_xlat1;
  let x_56 : vec3<f32> = x_52.x_WorldSpaceCameraPos;
  u_xlat15 = (-(x_47) + x_56);
  let x_59 : vec3<f32> = u_xlat15;
  let x_60 : vec3<f32> = u_xlat15;
  u_xlat46 = dot(x_59, x_60);
  let x_62 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_62);
  let x_66 : vec3<f32> = u_xlat15;
  let x_67 : f32 = u_xlat46;
  let x_69 : vec3<f32> = (x_66 * vec3<f32>(x_67, x_67, x_67));
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_85.x, x_85.y));
  u_xlat3 = x_87;
  let x_88 : vec4<f32> = u_xlat3;
  let x_93 : vec4<f32> = x_52.x_Color;
  let x_95 : vec3<f32> = (vec3<f32>(x_88.x, x_88.y, x_88.z) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : vec4<f32> = u_xlat3;
  let x_102 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_99.x, x_99.y, x_99.z) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_108 : f32 = x_52.x_Time.x;
  let x_111 : f32 = x_52.x_MovementSpeed;
  let x_114 : f32 = vs_TEXCOORD0.z;
  u_xlat5.x = ((x_108 * x_111) + x_114);
  let x_118 : f32 = x_52.x_Time.x;
  let x_121 : f32 = x_52.x_MovementSpeed;
  let x_124 : f32 = vs_TEXCOORD0.w;
  u_xlat5.y = ((-(x_118) * x_121) + x_124);
  let x_132 : vec4<f32> = u_xlat5;
  let x_134 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_132.x, x_132.y));
  let x_135 : vec3<f32> = vec3<f32>(x_134.x, x_134.y, x_134.w);
  let x_136 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : f32 = u_xlat5.z;
  let x_141 : f32 = u_xlat5.x;
  u_xlat5.x = (x_139 * x_141);
  let x_144 : vec4<f32> = u_xlat5;
  let x_151 : vec2<f32> = ((vec2<f32>(x_144.x, x_144.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_152 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_151.x, x_151.y, x_152.z, x_152.w);
  let x_154 : vec4<f32> = u_xlat5;
  let x_158 : f32 = x_52.x_NormalSacle;
  let x_160 : vec2<f32> = (vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_158, x_158));
  let x_161 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_160.x, x_160.y, x_161.z, x_161.w);
  let x_164 : vec4<f32> = u_xlat5;
  let x_166 : vec4<f32> = u_xlat5;
  u_xlat47 = dot(vec2<f32>(x_164.x, x_164.y), vec2<f32>(x_166.x, x_166.y));
  let x_169 : f32 = u_xlat47;
  u_xlat47 = min(x_169, 1.0f);
  let x_172 : f32 = u_xlat47;
  u_xlat47 = (-(x_172) + 1.0f);
  let x_175 : f32 = u_xlat47;
  u_xlat5.z = sqrt(x_175);
  let x_179 : f32 = vs_COLOR0.w;
  u_xlat47 = (-(x_179) + 1.0f);
  let x_183 : f32 = u_xlat3.w;
  let x_185 : f32 = x_52.x_Color.w;
  let x_187 : f32 = u_xlat47;
  u_xlat47 = ((x_183 * x_185) + -(x_187));
  let x_193 : f32 = u_xlat47;
  u_xlatb47 = (x_193 < 0.0f);
  let x_196 : bool = u_xlatb47;
  if (((select(0i, 1i, x_196) * -1i) != 0i)) {
    discard;
  }
  let x_204 : i32 = u_xlati0;
  u_xlati0 = (x_204 * 7i);
  let x_209 : f32 = x_52.unity_ProbeVolumeParams.x;
  u_xlatb47 = (x_209 == 1.0f);
  let x_211 : bool = u_xlatb47;
  if (x_211) {
    let x_216 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_216 == 1.0f);
    let x_219 : vec4<f32> = vs_TEXCOORD2;
    let x_223 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_225 : vec3<f32> = (vec3<f32>(x_219.w, x_219.w, x_219.w) * vec3<f32>(x_223.x, x_223.y, x_223.z));
    let x_226 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_229 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_231 : vec4<f32> = vs_TEXCOORD1;
    let x_234 : vec4<f32> = u_xlat6;
    let x_236 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(x_231.w, x_231.w, x_231.w)) + vec3<f32>(x_234.x, x_234.y, x_234.z));
    let x_237 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
    let x_241 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_243 : vec4<f32> = vs_TEXCOORD3;
    let x_246 : vec4<f32> = u_xlat6;
    let x_248 : vec3<f32> = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(x_243.w, x_243.w, x_243.w)) + vec3<f32>(x_246.x, x_246.y, x_246.z));
    let x_249 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
    let x_251 : vec4<f32> = u_xlat6;
    let x_255 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_257 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_260 : bool = u_xlatb48;
    if (x_260) {
      let x_264 : vec4<f32> = u_xlat6;
      x_261 = vec3<f32>(x_264.x, x_264.y, x_264.z);
    } else {
      let x_267 : vec3<f32> = u_xlat1;
      x_261 = x_267;
    }
    let x_268 : vec3<f32> = x_261;
    let x_269 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat6;
    let x_275 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + -(x_275));
    let x_278 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat6;
    let x_284 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * x_284);
    let x_286 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_285.z);
    let x_290 : f32 = u_xlat6.y;
    u_xlat48 = ((x_290 * 0.25f) + 0.75f);
    let x_297 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat49 = ((x_297 * 0.5f) + 0.75f);
    let x_301 : f32 = u_xlat48;
    let x_302 : f32 = u_xlat49;
    u_xlat6.x = max(x_301, x_302);
    let x_313 : vec4<f32> = u_xlat6;
    let x_315 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_313.x, x_313.z, x_313.w));
    u_xlat6 = x_315;
  } else {
    let x_323 : i32 = u_xlati0;
    let x_327 : vec4<f32> = x_322.unity_Builtins2Array[(x_323 / 7i)].unity_SHCArray;
    u_xlat6 = vec4<f32>(x_327.w, x_327.w, x_327.w, x_327.w);
  }
  let x_329 : vec4<f32> = u_xlat6;
  let x_331 : vec4<f32> = x_52.unity_OcclusionMaskSelector;
  u_xlat48 = dot(x_329, x_331);
  let x_333 : f32 = u_xlat48;
  u_xlat48 = clamp(x_333, 0.0f, 1.0f);
  let x_335 : vec4<f32> = vs_TEXCOORD1;
  let x_337 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_341 : vec4<f32> = vs_TEXCOORD2;
  let x_343 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_341.x, x_341.y, x_341.z), vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_347 : vec4<f32> = vs_TEXCOORD3;
  let x_349 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_347.x, x_347.y, x_347.z), vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_353 : vec4<f32> = u_xlat6;
  let x_355 : vec4<f32> = u_xlat6;
  u_xlat49 = dot(vec3<f32>(x_353.x, x_353.y, x_353.z), vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : f32 = u_xlat49;
  u_xlat49 = inverseSqrt(x_358);
  let x_360 : f32 = u_xlat49;
  let x_362 : vec4<f32> = u_xlat6;
  let x_364 : vec3<f32> = (vec3<f32>(x_360, x_360, x_360) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_369 : f32 = x_52.x_Glossiness;
  u_xlat49 = (-(x_369) + 1.0f);
  let x_372 : vec4<f32> = u_xlat2;
  let x_375 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(-(vec3<f32>(x_372.x, x_372.y, x_372.z)), vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_380 : f32 = u_xlat6.x;
  let x_382 : f32 = u_xlat6.x;
  u_xlat6.x = (x_380 + x_382);
  let x_385 : vec4<f32> = u_xlat5;
  let x_387 : vec4<f32> = u_xlat6;
  let x_391 : vec4<f32> = u_xlat2;
  let x_394 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * -(vec3<f32>(x_387.x, x_387.x, x_387.x))) + -(vec3<f32>(x_391.x, x_391.y, x_391.z)));
  let x_395 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_398 : f32 = u_xlat48;
  let x_402 : vec4<f32> = x_52.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_398, x_398, x_398) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : bool = u_xlatb47;
  if (x_405) {
    let x_409 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb47 = (x_409 == 1.0f);
    let x_412 : vec4<f32> = vs_TEXCOORD2;
    let x_415 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_417 : vec3<f32> = (vec3<f32>(x_412.w, x_412.w, x_412.w) * vec3<f32>(x_415.x, x_415.y, x_415.z));
    let x_418 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
    let x_421 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_423 : vec4<f32> = vs_TEXCOORD1;
    let x_426 : vec4<f32> = u_xlat8;
    let x_428 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_423.w, x_423.w, x_423.w)) + vec3<f32>(x_426.x, x_426.y, x_426.z));
    let x_429 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
    let x_432 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_434 : vec4<f32> = vs_TEXCOORD3;
    let x_437 : vec4<f32> = u_xlat8;
    let x_439 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(x_434.w, x_434.w, x_434.w)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
    let x_440 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
    let x_442 : vec4<f32> = u_xlat8;
    let x_445 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_447 : vec3<f32> = (vec3<f32>(x_442.x, x_442.y, x_442.z) + vec3<f32>(x_445.x, x_445.y, x_445.z));
    let x_448 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
    let x_450 : bool = u_xlatb47;
    if (x_450) {
      let x_454 : vec4<f32> = u_xlat8;
      x_451 = vec3<f32>(x_454.x, x_454.y, x_454.z);
    } else {
      let x_457 : vec3<f32> = u_xlat1;
      x_451 = x_457;
    }
    let x_458 : vec3<f32> = x_451;
    let x_459 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
    let x_461 : vec4<f32> = u_xlat8;
    let x_464 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_466 : vec3<f32> = (vec3<f32>(x_461.x, x_461.y, x_461.z) + -(x_464));
    let x_467 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
    let x_469 : vec4<f32> = u_xlat8;
    let x_472 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_473 : vec3<f32> = (vec3<f32>(x_469.x, x_469.y, x_469.z) * x_472);
    let x_474 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_474.x, x_473.x, x_473.y, x_473.z);
    let x_477 : f32 = u_xlat8.y;
    u_xlat47 = (x_477 * 0.25f);
    let x_480 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat48 = (x_480 * 0.5f);
    let x_484 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat51 = ((-(x_484) * 0.5f) + 0.25f);
    let x_488 : f32 = u_xlat47;
    let x_489 : f32 = u_xlat48;
    u_xlat47 = max(x_488, x_489);
    let x_491 : f32 = u_xlat51;
    let x_492 : f32 = u_xlat47;
    u_xlat8.x = min(x_491, x_492);
    let x_499 : vec4<f32> = u_xlat8;
    let x_501 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_499.x, x_499.z, x_499.w));
    u_xlat9 = x_501;
    let x_503 : vec4<f32> = u_xlat8;
    let x_506 : vec3<f32> = (vec3<f32>(x_503.x, x_503.z, x_503.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_507 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
    let x_512 : vec4<f32> = u_xlat10;
    let x_514 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_512.x, x_512.y, x_512.z));
    u_xlat10 = x_514;
    let x_515 : vec4<f32> = u_xlat8;
    let x_518 : vec3<f32> = (vec3<f32>(x_515.x, x_515.z, x_515.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_519 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
    let x_524 : vec4<f32> = u_xlat8;
    let x_526 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_524.x, x_524.y, x_524.z));
    u_xlat8 = x_526;
    u_xlat5.w = 1.0f;
    let x_528 : vec4<f32> = u_xlat9;
    let x_529 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_528, x_529);
    let x_532 : vec4<f32> = u_xlat10;
    let x_533 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_532, x_533);
    let x_536 : vec4<f32> = u_xlat8;
    let x_537 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_536, x_537);
  } else {
    u_xlat5.w = 1.0f;
    let x_542 : i32 = u_xlati0;
    let x_545 : vec4<f32> = x_322.unity_Builtins2Array[(x_542 / 7i)].unity_SHArArray;
    let x_546 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_545, x_546);
    let x_549 : i32 = u_xlati0;
    let x_552 : vec4<f32> = x_322.unity_Builtins2Array[(x_549 / 7i)].unity_SHAgArray;
    let x_553 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_552, x_553);
    let x_556 : i32 = u_xlati0;
    let x_559 : vec4<f32> = x_322.unity_Builtins2Array[(x_556 / 7i)].unity_SHAbArray;
    let x_560 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_559, x_560);
  }
  let x_563 : vec4<f32> = u_xlat9;
  let x_567 : vec3<f32> = vs_TEXCOORD5;
  let x_568 : vec3<f32> = (vec3<f32>(x_563.x, x_563.y, x_563.z) + x_567);
  let x_569 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
  let x_571 : vec4<f32> = u_xlat8;
  let x_574 : vec3<f32> = max(vec3<f32>(x_571.x, x_571.y, x_571.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_575 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_579 : f32 = x_52.unity_SpecCube0_ProbePosition.w;
  u_xlatb0 = (0.0f < x_579);
  let x_581 : bool = u_xlatb0;
  if (x_581) {
    let x_585 : vec4<f32> = u_xlat6;
    let x_587 : vec4<f32> = u_xlat6;
    u_xlat0.x = dot(vec3<f32>(x_585.x, x_585.y, x_585.z), vec3<f32>(x_587.x, x_587.y, x_587.z));
    let x_592 : f32 = u_xlat0.x;
    u_xlat0.x = inverseSqrt(x_592);
    let x_595 : vec3<f32> = u_xlat0;
    let x_597 : vec4<f32> = u_xlat6;
    let x_599 : vec3<f32> = (vec3<f32>(x_595.x, x_595.x, x_595.x) * vec3<f32>(x_597.x, x_597.y, x_597.z));
    let x_600 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
    let x_602 : vec3<f32> = u_xlat1;
    let x_606 : vec4<f32> = x_52.unity_SpecCube0_BoxMax;
    let x_608 : vec3<f32> = (-(x_602) + vec3<f32>(x_606.x, x_606.y, x_606.z));
    let x_609 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
    let x_611 : vec4<f32> = u_xlat10;
    let x_613 : vec4<f32> = u_xlat9;
    let x_615 : vec3<f32> = (vec3<f32>(x_611.x, x_611.y, x_611.z) / vec3<f32>(x_613.x, x_613.y, x_613.z));
    let x_616 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
    let x_619 : vec3<f32> = u_xlat1;
    let x_623 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_619) + vec3<f32>(x_623.x, x_623.y, x_623.z));
    let x_626 : vec3<f32> = u_xlat11;
    let x_627 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_626 / vec3<f32>(x_627.x, x_627.y, x_627.z));
    let x_634 : vec4<f32> = u_xlat9;
    let x_637 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_634.x, x_634.y, x_634.z, x_634.x));
    u_xlatb12 = vec3<bool>(x_637.x, x_637.y, x_637.z);
    let x_640 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_640;
    let x_642 : bool = u_xlatb12.x;
    if (x_642) {
      let x_647 : f32 = u_xlat10.x;
      x_643 = x_647;
    } else {
      let x_650 : f32 = u_xlat11.x;
      x_643 = x_650;
    }
    let x_651 : f32 = x_643;
    hlslcc_movcTemp.x = x_651;
    let x_654 : bool = u_xlatb12.y;
    if (x_654) {
      let x_659 : f32 = u_xlat10.y;
      x_655 = x_659;
    } else {
      let x_662 : f32 = u_xlat11.y;
      x_655 = x_662;
    }
    let x_663 : f32 = x_655;
    hlslcc_movcTemp.y = x_663;
    let x_666 : bool = u_xlatb12.z;
    if (x_666) {
      let x_671 : f32 = u_xlat10.z;
      x_667 = x_671;
    } else {
      let x_674 : f32 = u_xlat11.z;
      x_667 = x_674;
    }
    let x_675 : f32 = x_667;
    hlslcc_movcTemp.z = x_675;
    let x_677 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_677;
    let x_679 : f32 = u_xlat10.y;
    let x_681 : f32 = u_xlat10.x;
    u_xlat0.x = min(x_679, x_681);
    let x_685 : f32 = u_xlat10.z;
    let x_687 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_685, x_687);
    let x_690 : vec3<f32> = u_xlat1;
    let x_692 : vec4<f32> = x_52.unity_SpecCube0_ProbePosition;
    let x_695 : vec3<f32> = (x_690 + -(vec3<f32>(x_692.x, x_692.y, x_692.z)));
    let x_696 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
    let x_698 : vec4<f32> = u_xlat9;
    let x_700 : vec3<f32> = u_xlat0;
    let x_703 : vec4<f32> = u_xlat10;
    let x_705 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_700.x, x_700.x, x_700.x)) + vec3<f32>(x_703.x, x_703.y, x_703.z));
    let x_706 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  } else {
    let x_709 : vec4<f32> = u_xlat6;
    let x_710 : vec3<f32> = vec3<f32>(x_709.x, x_709.y, x_709.z);
    let x_711 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  }
  let x_713 : f32 = u_xlat49;
  u_xlat0.x = ((-(x_713) * 0.699999988f) + 1.700000048f);
  let x_721 : f32 = u_xlat0.x;
  let x_722 : f32 = u_xlat49;
  u_xlat0.x = (x_721 * x_722);
  let x_726 : f32 = u_xlat0.x;
  u_xlat0.x = (x_726 * 6.0f);
  let x_738 : vec4<f32> = u_xlat9;
  let x_741 : f32 = u_xlat0.x;
  let x_742 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_738.x, x_738.y, x_738.z), x_741);
  u_xlat9 = x_742;
  let x_744 : f32 = u_xlat9.w;
  u_xlat47 = (x_744 + -1.0f);
  let x_747 : f32 = x_52.unity_SpecCube0_HDR.w;
  let x_748 : f32 = u_xlat47;
  u_xlat47 = ((x_747 * x_748) + 1.0f);
  let x_751 : f32 = u_xlat47;
  u_xlat47 = log2(x_751);
  let x_753 : f32 = u_xlat47;
  let x_755 : f32 = x_52.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_753 * x_755);
  let x_757 : f32 = u_xlat47;
  u_xlat47 = exp2(x_757);
  let x_759 : f32 = u_xlat47;
  let x_761 : f32 = x_52.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_759 * x_761);
  let x_763 : vec4<f32> = u_xlat9;
  let x_765 : f32 = u_xlat47;
  let x_767 : vec3<f32> = (vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(x_765, x_765, x_765));
  let x_768 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_771 : f32 = x_52.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_771 < 0.999989986f);
  let x_774 : bool = u_xlatb48;
  if (x_774) {
    let x_779 : f32 = x_52.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_779);
    let x_781 : bool = u_xlatb48;
    if (x_781) {
      let x_784 : vec4<f32> = u_xlat6;
      let x_786 : vec4<f32> = u_xlat6;
      u_xlat48 = dot(vec3<f32>(x_784.x, x_784.y, x_784.z), vec3<f32>(x_786.x, x_786.y, x_786.z));
      let x_789 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_789);
      let x_791 : f32 = u_xlat48;
      let x_793 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_791, x_791, x_791) * vec3<f32>(x_793.x, x_793.y, x_793.z));
      let x_797 : vec3<f32> = u_xlat1;
      let x_801 : vec4<f32> = x_52.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_797) + vec3<f32>(x_801.x, x_801.y, x_801.z));
      let x_804 : vec3<f32> = u_xlat12;
      let x_805 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_804 / x_805);
      let x_808 : vec3<f32> = u_xlat1;
      let x_812 : vec4<f32> = x_52.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_808) + vec3<f32>(x_812.x, x_812.y, x_812.z));
      let x_815 : vec3<f32> = u_xlat13;
      let x_816 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_815 / x_816);
      let x_819 : vec3<f32> = u_xlat11;
      let x_821 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_819.x, x_819.y, x_819.z, x_819.x));
      u_xlatb14 = vec3<bool>(x_821.x, x_821.y, x_821.z);
      let x_824 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_824;
      let x_826 : bool = u_xlatb14.x;
      if (x_826) {
        let x_831 : f32 = u_xlat12.x;
        x_827 = x_831;
      } else {
        let x_834 : f32 = u_xlat13.x;
        x_827 = x_834;
      }
      let x_835 : f32 = x_827;
      hlslcc_movcTemp_1.x = x_835;
      let x_838 : bool = u_xlatb14.y;
      if (x_838) {
        let x_843 : f32 = u_xlat12.y;
        x_839 = x_843;
      } else {
        let x_846 : f32 = u_xlat13.y;
        x_839 = x_846;
      }
      let x_847 : f32 = x_839;
      hlslcc_movcTemp_1.y = x_847;
      let x_850 : bool = u_xlatb14.z;
      if (x_850) {
        let x_855 : f32 = u_xlat12.z;
        x_851 = x_855;
      } else {
        let x_858 : f32 = u_xlat13.z;
        x_851 = x_858;
      }
      let x_859 : f32 = x_851;
      hlslcc_movcTemp_1.z = x_859;
      let x_861 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_861;
      let x_863 : f32 = u_xlat12.y;
      let x_865 : f32 = u_xlat12.x;
      u_xlat48 = min(x_863, x_865);
      let x_868 : f32 = u_xlat12.z;
      let x_869 : f32 = u_xlat48;
      u_xlat48 = min(x_868, x_869);
      let x_871 : vec3<f32> = u_xlat1;
      let x_873 : vec4<f32> = x_52.unity_SpecCube1_ProbePosition;
      u_xlat1 = (x_871 + -(vec3<f32>(x_873.x, x_873.y, x_873.z)));
      let x_877 : vec3<f32> = u_xlat11;
      let x_878 : f32 = u_xlat48;
      let x_881 : vec3<f32> = u_xlat1;
      let x_882 : vec3<f32> = ((x_877 * vec3<f32>(x_878, x_878, x_878)) + x_881);
      let x_883 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
    }
    let x_889 : vec4<f32> = u_xlat6;
    let x_892 : f32 = u_xlat0.x;
    let x_893 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_889.x, x_889.y, x_889.z), x_892);
    u_xlat6 = x_893;
    let x_895 : f32 = u_xlat6.w;
    u_xlat0.x = (x_895 + -1.0f);
    let x_900 : f32 = x_52.unity_SpecCube1_HDR.w;
    let x_902 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_900 * x_902) + 1.0f);
    let x_907 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_907);
    let x_911 : f32 = u_xlat0.x;
    let x_913 : f32 = x_52.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_911 * x_913);
    let x_917 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_917);
    let x_921 : f32 = u_xlat0.x;
    let x_923 : f32 = x_52.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_921 * x_923);
    let x_926 : vec4<f32> = u_xlat6;
    let x_928 : vec3<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(x_928.x, x_928.x, x_928.x));
    let x_931 : f32 = u_xlat47;
    let x_933 : vec4<f32> = u_xlat9;
    let x_936 : vec3<f32> = u_xlat1;
    let x_938 : vec3<f32> = ((vec3<f32>(x_931, x_931, x_931) * vec3<f32>(x_933.x, x_933.y, x_933.z)) + -(x_936));
    let x_939 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
    let x_942 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    let x_944 : vec4<f32> = u_xlat6;
    let x_947 : vec3<f32> = u_xlat1;
    let x_948 : vec3<f32> = ((vec3<f32>(x_942.w, x_942.w, x_942.w) * vec3<f32>(x_944.x, x_944.y, x_944.z)) + x_947);
    let x_949 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  }
  let x_951 : vec4<f32> = u_xlat3;
  let x_953 : vec4<f32> = vs_COLOR0;
  u_xlat1 = ((vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(x_953.x, x_953.y, x_953.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_961 : f32 = x_52.x_Metallic;
  let x_963 : f32 = x_52.x_Metallic;
  let x_965 : f32 = x_52.x_Metallic;
  let x_966 : vec3<f32> = vec3<f32>(x_961, x_963, x_965);
  let x_971 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_966.x, x_966.y, x_966.z) * x_971) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_977 : f32 = x_52.x_Metallic;
  u_xlat0.x = ((-(x_977) * 0.959999979f) + 0.959999979f);
  let x_983 : vec3<f32> = u_xlat0;
  let x_985 : vec3<f32> = u_xlat4;
  let x_986 : vec3<f32> = (vec3<f32>(x_983.x, x_983.x, x_983.x) * x_985);
  let x_987 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec3<f32> = u_xlat15;
  let x_990 : f32 = u_xlat46;
  let x_994 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat15 = ((x_989 * vec3<f32>(x_990, x_990, x_990)) + vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec3<f32> = u_xlat15;
  let x_998 : vec3<f32> = u_xlat15;
  u_xlat46 = dot(x_997, x_998);
  let x_1000 : f32 = u_xlat46;
  u_xlat46 = max(x_1000, 0.001f);
  let x_1003 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_1003);
  let x_1005 : vec3<f32> = u_xlat15;
  let x_1006 : f32 = u_xlat46;
  u_xlat15 = (x_1005 * vec3<f32>(x_1006, x_1006, x_1006));
  let x_1009 : vec4<f32> = u_xlat5;
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : vec4<f32> = u_xlat5;
  let x_1017 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1014.x, x_1014.y, x_1014.z), vec3<f32>(x_1017.x, x_1017.y, x_1017.z));
  let x_1022 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1022, 0.0f, 1.0f);
  let x_1026 : vec4<f32> = u_xlat5;
  let x_1028 : vec3<f32> = u_xlat15;
  u_xlat17 = dot(vec3<f32>(x_1026.x, x_1026.y, x_1026.z), x_1028);
  let x_1030 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1030, 0.0f, 1.0f);
  let x_1033 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  let x_1035 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(vec3<f32>(x_1033.x, x_1033.y, x_1033.z), x_1035);
  let x_1039 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_1039, 0.0f, 1.0f);
  let x_1044 : f32 = u_xlat15.x;
  let x_1046 : f32 = u_xlat15.x;
  u_xlat30 = (x_1044 * x_1046);
  let x_1048 : f32 = u_xlat30;
  let x_1050 : f32 = u_xlat49;
  u_xlat30 = dot(vec2<f32>(x_1048, x_1048), vec2<f32>(x_1050, x_1050));
  let x_1053 : f32 = u_xlat30;
  u_xlat30 = (x_1053 + -0.5f);
  let x_1058 : f32 = u_xlat2.x;
  u_xlat45 = (-(x_1058) + 1.0f);
  let x_1062 : f32 = u_xlat45;
  let x_1063 : f32 = u_xlat45;
  u_xlat32 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat32;
  let x_1066 : f32 = u_xlat32;
  u_xlat32 = (x_1065 * x_1066);
  let x_1068 : f32 = u_xlat45;
  let x_1069 : f32 = u_xlat32;
  u_xlat45 = (x_1068 * x_1069);
  let x_1071 : f32 = u_xlat30;
  let x_1072 : f32 = u_xlat45;
  u_xlat45 = ((x_1071 * x_1072) + 1.0f);
  let x_1075 : f32 = u_xlat46;
  u_xlat32 = (-(abs(x_1075)) + 1.0f);
  let x_1079 : f32 = u_xlat32;
  let x_1080 : f32 = u_xlat32;
  u_xlat47 = (x_1079 * x_1080);
  let x_1082 : f32 = u_xlat47;
  let x_1083 : f32 = u_xlat47;
  u_xlat47 = (x_1082 * x_1083);
  let x_1085 : f32 = u_xlat32;
  let x_1086 : f32 = u_xlat47;
  u_xlat32 = (x_1085 * x_1086);
  let x_1088 : f32 = u_xlat30;
  let x_1089 : f32 = u_xlat32;
  u_xlat30 = ((x_1088 * x_1089) + 1.0f);
  let x_1092 : f32 = u_xlat30;
  let x_1093 : f32 = u_xlat45;
  u_xlat30 = (x_1092 * x_1093);
  let x_1096 : f32 = u_xlat2.x;
  let x_1097 : f32 = u_xlat30;
  u_xlat30 = (x_1096 * x_1097);
  let x_1099 : f32 = u_xlat49;
  let x_1100 : f32 = u_xlat49;
  u_xlat45 = (x_1099 * x_1100);
  let x_1102 : f32 = u_xlat45;
  u_xlat45 = max(x_1102, 0.002f);
  let x_1105 : f32 = u_xlat45;
  u_xlat47 = (-(x_1105) + 1.0f);
  let x_1108 : f32 = u_xlat46;
  let x_1110 : f32 = u_xlat47;
  let x_1112 : f32 = u_xlat45;
  u_xlat48 = ((abs(x_1108) * x_1110) + x_1112);
  let x_1115 : f32 = u_xlat2.x;
  let x_1116 : f32 = u_xlat47;
  let x_1118 : f32 = u_xlat45;
  u_xlat47 = ((x_1115 * x_1116) + x_1118);
  let x_1120 : f32 = u_xlat46;
  let x_1122 : f32 = u_xlat47;
  u_xlat46 = (abs(x_1120) * x_1122);
  let x_1125 : f32 = u_xlat2.x;
  let x_1126 : f32 = u_xlat48;
  let x_1128 : f32 = u_xlat46;
  u_xlat46 = ((x_1125 * x_1126) + x_1128);
  let x_1130 : f32 = u_xlat46;
  u_xlat46 = (x_1130 + 0.00001f);
  let x_1133 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1133);
  let x_1135 : f32 = u_xlat45;
  let x_1136 : f32 = u_xlat45;
  u_xlat47 = (x_1135 * x_1136);
  let x_1138 : f32 = u_xlat17;
  let x_1139 : f32 = u_xlat47;
  let x_1141 : f32 = u_xlat17;
  u_xlat48 = ((x_1138 * x_1139) + -(x_1141));
  let x_1144 : f32 = u_xlat48;
  let x_1145 : f32 = u_xlat17;
  u_xlat17 = ((x_1144 * x_1145) + 1.0f);
  let x_1148 : f32 = u_xlat47;
  u_xlat47 = (x_1148 * 0.318309873f);
  let x_1151 : f32 = u_xlat17;
  let x_1152 : f32 = u_xlat17;
  u_xlat17 = ((x_1151 * x_1152) + 0.0000001f);
  let x_1156 : f32 = u_xlat47;
  let x_1157 : f32 = u_xlat17;
  u_xlat17 = (x_1156 / x_1157);
  let x_1159 : f32 = u_xlat46;
  let x_1160 : f32 = u_xlat17;
  u_xlat46 = (x_1159 * x_1160);
  let x_1163 : f32 = u_xlat2.x;
  let x_1164 : f32 = u_xlat46;
  u_xlat46 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat46;
  u_xlat46 = (x_1166 * 3.141592741f);
  let x_1169 : f32 = u_xlat46;
  u_xlat46 = max(x_1169, 0.0f);
  let x_1171 : f32 = u_xlat45;
  let x_1172 : f32 = u_xlat45;
  u_xlat45 = ((x_1171 * x_1172) + 1.0f);
  let x_1175 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1175);
  let x_1177 : vec3<f32> = u_xlat1;
  let x_1178 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_1177, x_1178);
  let x_1183 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1183 == 0.0f));
  let x_1185 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1185);
  let x_1188 : f32 = u_xlat46;
  let x_1190 : f32 = u_xlat2.x;
  u_xlat46 = (x_1188 * x_1190);
  let x_1193 : f32 = u_xlat0.x;
  let x_1196 : f32 = x_52.x_Glossiness;
  u_xlat0.x = (-(x_1193) + x_1196);
  let x_1200 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1200 + 1.0f);
  let x_1204 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1204, 0.0f, 1.0f);
  let x_1207 : vec3<f32> = u_xlat7;
  let x_1208 : f32 = u_xlat30;
  let x_1211 : vec4<f32> = u_xlat8;
  let x_1213 : vec3<f32> = ((x_1207 * vec3<f32>(x_1208, x_1208, x_1208)) + vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1213.x, x_1213.y, x_1214.z, x_1213.z);
  let x_1216 : vec3<f32> = u_xlat7;
  let x_1217 : f32 = u_xlat46;
  u_xlat4 = (x_1216 * vec3<f32>(x_1217, x_1217, x_1217));
  let x_1221 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_1221) + 1.0f);
  let x_1226 : f32 = u_xlat15.x;
  let x_1228 : f32 = u_xlat15.x;
  u_xlat30 = (x_1226 * x_1228);
  let x_1230 : f32 = u_xlat30;
  let x_1231 : f32 = u_xlat30;
  u_xlat30 = (x_1230 * x_1231);
  let x_1234 : f32 = u_xlat15.x;
  let x_1235 : f32 = u_xlat30;
  u_xlat15.x = (x_1234 * x_1235);
  let x_1238 : vec3<f32> = u_xlat1;
  let x_1241 : vec3<f32> = (-(x_1238) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1242 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec4<f32> = u_xlat5;
  let x_1246 : vec3<f32> = u_xlat15;
  let x_1249 : vec3<f32> = u_xlat1;
  let x_1250 : vec3<f32> = ((vec3<f32>(x_1244.x, x_1244.y, x_1244.z) * vec3<f32>(x_1246.x, x_1246.x, x_1246.x)) + x_1249);
  let x_1251 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1251.w);
  let x_1253 : vec3<f32> = u_xlat4;
  let x_1254 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1253 * vec3<f32>(x_1254.x, x_1254.y, x_1254.z));
  let x_1257 : vec4<f32> = u_xlat3;
  let x_1259 : vec4<f32> = u_xlat2;
  let x_1262 : vec3<f32> = u_xlat4;
  let x_1263 : vec3<f32> = ((vec3<f32>(x_1257.x, x_1257.y, x_1257.z) * vec3<f32>(x_1259.x, x_1259.y, x_1259.w)) + x_1262);
  let x_1264 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1263.x, x_1263.y, x_1264.z, x_1263.z);
  let x_1266 : vec4<f32> = u_xlat10;
  let x_1268 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1266.x, x_1266.y, x_1266.z) * vec3<f32>(x_1268, x_1268, x_1268));
  let x_1271 : vec3<f32> = u_xlat1;
  let x_1273 : vec3<f32> = u_xlat0;
  let x_1275 : vec3<f32> = (-(x_1271) + vec3<f32>(x_1273.x, x_1273.x, x_1273.x));
  let x_1276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : f32 = u_xlat32;
  let x_1280 : vec4<f32> = u_xlat3;
  let x_1283 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1278, x_1278, x_1278) * vec3<f32>(x_1280.x, x_1280.y, x_1280.z)) + x_1283);
  let x_1285 : vec3<f32> = u_xlat15;
  let x_1286 : vec3<f32> = u_xlat1;
  let x_1288 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1285 * x_1286) + vec3<f32>(x_1288.x, x_1288.y, x_1288.w));
  let x_1293 : vec3<f32> = u_xlat0;
  let x_1296 : vec4<f32> = x_52.x_AmbientColor;
  let x_1298 : vec3<f32> = (x_1293 + vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1299 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

