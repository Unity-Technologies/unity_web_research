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
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

var<private> vs_TEXCOORD6 : f32;

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
  var x_452 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat0 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_644 : f32;
  var x_656 : f32;
  var x_668 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_829 : f32;
  var x_841 : f32;
  var x_853 : f32;
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
  let x_332 : vec4<f32> = x_52.unity_OcclusionMaskSelector;
  u_xlat48 = dot(x_329, x_332);
  let x_334 : f32 = u_xlat48;
  u_xlat48 = clamp(x_334, 0.0f, 1.0f);
  let x_336 : vec4<f32> = vs_TEXCOORD1;
  let x_338 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_336.x, x_336.y, x_336.z), vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_342 : vec4<f32> = vs_TEXCOORD2;
  let x_344 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_342.x, x_342.y, x_342.z), vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_348 : vec4<f32> = vs_TEXCOORD3;
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_348.x, x_348.y, x_348.z), vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_354 : vec4<f32> = u_xlat6;
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat49 = dot(vec3<f32>(x_354.x, x_354.y, x_354.z), vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : f32 = u_xlat49;
  u_xlat49 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat49;
  let x_363 : vec4<f32> = u_xlat6;
  let x_365 : vec3<f32> = (vec3<f32>(x_361, x_361, x_361) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_370 : f32 = x_52.x_Glossiness;
  u_xlat49 = (-(x_370) + 1.0f);
  let x_373 : vec4<f32> = u_xlat2;
  let x_376 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(-(vec3<f32>(x_373.x, x_373.y, x_373.z)), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_381 : f32 = u_xlat6.x;
  let x_383 : f32 = u_xlat6.x;
  u_xlat6.x = (x_381 + x_383);
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec4<f32> = u_xlat6;
  let x_392 : vec4<f32> = u_xlat2;
  let x_395 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * -(vec3<f32>(x_388.x, x_388.x, x_388.x))) + -(vec3<f32>(x_392.x, x_392.y, x_392.z)));
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_399 : f32 = u_xlat48;
  let x_403 : vec4<f32> = x_52.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_399, x_399, x_399) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : bool = u_xlatb47;
  if (x_406) {
    let x_410 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb47 = (x_410 == 1.0f);
    let x_413 : vec4<f32> = vs_TEXCOORD2;
    let x_416 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_418 : vec3<f32> = (vec3<f32>(x_413.w, x_413.w, x_413.w) * vec3<f32>(x_416.x, x_416.y, x_416.z));
    let x_419 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
    let x_422 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_424 : vec4<f32> = vs_TEXCOORD1;
    let x_427 : vec4<f32> = u_xlat8;
    let x_429 : vec3<f32> = ((vec3<f32>(x_422.x, x_422.y, x_422.z) * vec3<f32>(x_424.w, x_424.w, x_424.w)) + vec3<f32>(x_427.x, x_427.y, x_427.z));
    let x_430 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_433 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_435 : vec4<f32> = vs_TEXCOORD3;
    let x_438 : vec4<f32> = u_xlat8;
    let x_440 : vec3<f32> = ((vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_435.w, x_435.w, x_435.w)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
    let x_441 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
    let x_443 : vec4<f32> = u_xlat8;
    let x_446 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_448 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) + vec3<f32>(x_446.x, x_446.y, x_446.z));
    let x_449 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_451 : bool = u_xlatb47;
    if (x_451) {
      let x_455 : vec4<f32> = u_xlat8;
      x_452 = vec3<f32>(x_455.x, x_455.y, x_455.z);
    } else {
      let x_458 : vec3<f32> = u_xlat1;
      x_452 = x_458;
    }
    let x_459 : vec3<f32> = x_452;
    let x_460 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : vec4<f32> = u_xlat8;
    let x_465 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_467 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + -(x_465));
    let x_468 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
    let x_470 : vec4<f32> = u_xlat8;
    let x_473 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_474 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) * x_473);
    let x_475 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_475.x, x_474.x, x_474.y, x_474.z);
    let x_478 : f32 = u_xlat8.y;
    u_xlat47 = (x_478 * 0.25f);
    let x_481 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat48 = (x_481 * 0.5f);
    let x_485 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat51 = ((-(x_485) * 0.5f) + 0.25f);
    let x_489 : f32 = u_xlat47;
    let x_490 : f32 = u_xlat48;
    u_xlat47 = max(x_489, x_490);
    let x_492 : f32 = u_xlat51;
    let x_493 : f32 = u_xlat47;
    u_xlat8.x = min(x_492, x_493);
    let x_500 : vec4<f32> = u_xlat8;
    let x_502 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_500.x, x_500.z, x_500.w));
    u_xlat9 = x_502;
    let x_504 : vec4<f32> = u_xlat8;
    let x_507 : vec3<f32> = (vec3<f32>(x_504.x, x_504.z, x_504.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_508 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
    let x_513 : vec4<f32> = u_xlat10;
    let x_515 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_513.x, x_513.y, x_513.z));
    u_xlat10 = x_515;
    let x_516 : vec4<f32> = u_xlat8;
    let x_519 : vec3<f32> = (vec3<f32>(x_516.x, x_516.z, x_516.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_520 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
    let x_525 : vec4<f32> = u_xlat8;
    let x_527 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_525.x, x_525.y, x_525.z));
    u_xlat8 = x_527;
    u_xlat5.w = 1.0f;
    let x_529 : vec4<f32> = u_xlat9;
    let x_530 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_529, x_530);
    let x_533 : vec4<f32> = u_xlat10;
    let x_534 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_533, x_534);
    let x_537 : vec4<f32> = u_xlat8;
    let x_538 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_537, x_538);
  } else {
    u_xlat5.w = 1.0f;
    let x_543 : i32 = u_xlati0;
    let x_546 : vec4<f32> = x_322.unity_Builtins2Array[(x_543 / 7i)].unity_SHArArray;
    let x_547 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_546, x_547);
    let x_550 : i32 = u_xlati0;
    let x_553 : vec4<f32> = x_322.unity_Builtins2Array[(x_550 / 7i)].unity_SHAgArray;
    let x_554 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_553, x_554);
    let x_557 : i32 = u_xlati0;
    let x_560 : vec4<f32> = x_322.unity_Builtins2Array[(x_557 / 7i)].unity_SHAbArray;
    let x_561 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_560, x_561);
  }
  let x_564 : vec4<f32> = u_xlat9;
  let x_568 : vec3<f32> = vs_TEXCOORD5;
  let x_569 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) + x_568);
  let x_570 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  let x_572 : vec4<f32> = u_xlat8;
  let x_575 : vec3<f32> = max(vec3<f32>(x_572.x, x_572.y, x_572.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_576 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_581 : f32 = x_52.unity_SpecCube0_ProbePosition.w;
  u_xlatb0 = (0.0f < x_581);
  let x_583 : bool = u_xlatb0;
  if (x_583) {
    let x_587 : vec4<f32> = u_xlat6;
    let x_589 : vec4<f32> = u_xlat6;
    u_xlat0.x = dot(vec3<f32>(x_587.x, x_587.y, x_587.z), vec3<f32>(x_589.x, x_589.y, x_589.z));
    let x_594 : f32 = u_xlat0.x;
    u_xlat0.x = inverseSqrt(x_594);
    let x_597 : vec3<f32> = u_xlat0;
    let x_599 : vec4<f32> = u_xlat6;
    let x_601 : vec3<f32> = (vec3<f32>(x_597.x, x_597.x, x_597.x) * vec3<f32>(x_599.x, x_599.y, x_599.z));
    let x_602 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
    let x_604 : vec3<f32> = u_xlat1;
    let x_607 : vec4<f32> = x_52.unity_SpecCube0_BoxMax;
    let x_609 : vec3<f32> = (-(x_604) + vec3<f32>(x_607.x, x_607.y, x_607.z));
    let x_610 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
    let x_612 : vec4<f32> = u_xlat10;
    let x_614 : vec4<f32> = u_xlat9;
    let x_616 : vec3<f32> = (vec3<f32>(x_612.x, x_612.y, x_612.z) / vec3<f32>(x_614.x, x_614.y, x_614.z));
    let x_617 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
    let x_620 : vec3<f32> = u_xlat1;
    let x_624 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_620) + vec3<f32>(x_624.x, x_624.y, x_624.z));
    let x_627 : vec3<f32> = u_xlat11;
    let x_628 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_627 / vec3<f32>(x_628.x, x_628.y, x_628.z));
    let x_635 : vec4<f32> = u_xlat9;
    let x_638 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_635.x, x_635.y, x_635.z, x_635.x));
    u_xlatb12 = vec3<bool>(x_638.x, x_638.y, x_638.z);
    let x_641 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_641;
    let x_643 : bool = u_xlatb12.x;
    if (x_643) {
      let x_648 : f32 = u_xlat10.x;
      x_644 = x_648;
    } else {
      let x_651 : f32 = u_xlat11.x;
      x_644 = x_651;
    }
    let x_652 : f32 = x_644;
    hlslcc_movcTemp.x = x_652;
    let x_655 : bool = u_xlatb12.y;
    if (x_655) {
      let x_660 : f32 = u_xlat10.y;
      x_656 = x_660;
    } else {
      let x_663 : f32 = u_xlat11.y;
      x_656 = x_663;
    }
    let x_664 : f32 = x_656;
    hlslcc_movcTemp.y = x_664;
    let x_667 : bool = u_xlatb12.z;
    if (x_667) {
      let x_672 : f32 = u_xlat10.z;
      x_668 = x_672;
    } else {
      let x_675 : f32 = u_xlat11.z;
      x_668 = x_675;
    }
    let x_676 : f32 = x_668;
    hlslcc_movcTemp.z = x_676;
    let x_678 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_678;
    let x_680 : f32 = u_xlat10.y;
    let x_682 : f32 = u_xlat10.x;
    u_xlat0.x = min(x_680, x_682);
    let x_686 : f32 = u_xlat10.z;
    let x_688 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_686, x_688);
    let x_691 : vec3<f32> = u_xlat1;
    let x_693 : vec4<f32> = x_52.unity_SpecCube0_ProbePosition;
    let x_696 : vec3<f32> = (x_691 + -(vec3<f32>(x_693.x, x_693.y, x_693.z)));
    let x_697 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
    let x_699 : vec4<f32> = u_xlat9;
    let x_701 : vec3<f32> = u_xlat0;
    let x_704 : vec4<f32> = u_xlat10;
    let x_706 : vec3<f32> = ((vec3<f32>(x_699.x, x_699.y, x_699.z) * vec3<f32>(x_701.x, x_701.x, x_701.x)) + vec3<f32>(x_704.x, x_704.y, x_704.z));
    let x_707 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  } else {
    let x_710 : vec4<f32> = u_xlat6;
    let x_711 : vec3<f32> = vec3<f32>(x_710.x, x_710.y, x_710.z);
    let x_712 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  }
  let x_714 : f32 = u_xlat49;
  u_xlat0.x = ((-(x_714) * 0.699999988f) + 1.700000048f);
  let x_722 : f32 = u_xlat0.x;
  let x_723 : f32 = u_xlat49;
  u_xlat0.x = (x_722 * x_723);
  let x_727 : f32 = u_xlat0.x;
  u_xlat0.x = (x_727 * 6.0f);
  let x_739 : vec4<f32> = u_xlat9;
  let x_742 : f32 = u_xlat0.x;
  let x_743 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_739.x, x_739.y, x_739.z), x_742);
  u_xlat9 = x_743;
  let x_745 : f32 = u_xlat9.w;
  u_xlat47 = (x_745 + -1.0f);
  let x_749 : f32 = x_52.unity_SpecCube0_HDR.w;
  let x_750 : f32 = u_xlat47;
  u_xlat47 = ((x_749 * x_750) + 1.0f);
  let x_753 : f32 = u_xlat47;
  u_xlat47 = log2(x_753);
  let x_755 : f32 = u_xlat47;
  let x_757 : f32 = x_52.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_755 * x_757);
  let x_759 : f32 = u_xlat47;
  u_xlat47 = exp2(x_759);
  let x_761 : f32 = u_xlat47;
  let x_763 : f32 = x_52.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_761 * x_763);
  let x_765 : vec4<f32> = u_xlat9;
  let x_767 : f32 = u_xlat47;
  let x_769 : vec3<f32> = (vec3<f32>(x_765.x, x_765.y, x_765.z) * vec3<f32>(x_767, x_767, x_767));
  let x_770 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_773 : f32 = x_52.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_773 < 0.999989986f);
  let x_776 : bool = u_xlatb48;
  if (x_776) {
    let x_781 : f32 = x_52.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_781);
    let x_783 : bool = u_xlatb48;
    if (x_783) {
      let x_786 : vec4<f32> = u_xlat6;
      let x_788 : vec4<f32> = u_xlat6;
      u_xlat48 = dot(vec3<f32>(x_786.x, x_786.y, x_786.z), vec3<f32>(x_788.x, x_788.y, x_788.z));
      let x_791 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_791);
      let x_793 : f32 = u_xlat48;
      let x_795 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_793, x_793, x_793) * vec3<f32>(x_795.x, x_795.y, x_795.z));
      let x_799 : vec3<f32> = u_xlat1;
      let x_803 : vec4<f32> = x_52.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_799) + vec3<f32>(x_803.x, x_803.y, x_803.z));
      let x_806 : vec3<f32> = u_xlat12;
      let x_807 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_806 / x_807);
      let x_810 : vec3<f32> = u_xlat1;
      let x_814 : vec4<f32> = x_52.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_810) + vec3<f32>(x_814.x, x_814.y, x_814.z));
      let x_817 : vec3<f32> = u_xlat13;
      let x_818 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_817 / x_818);
      let x_821 : vec3<f32> = u_xlat11;
      let x_823 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_821.x, x_821.y, x_821.z, x_821.x));
      u_xlatb14 = vec3<bool>(x_823.x, x_823.y, x_823.z);
      let x_826 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_826;
      let x_828 : bool = u_xlatb14.x;
      if (x_828) {
        let x_833 : f32 = u_xlat12.x;
        x_829 = x_833;
      } else {
        let x_836 : f32 = u_xlat13.x;
        x_829 = x_836;
      }
      let x_837 : f32 = x_829;
      hlslcc_movcTemp_1.x = x_837;
      let x_840 : bool = u_xlatb14.y;
      if (x_840) {
        let x_845 : f32 = u_xlat12.y;
        x_841 = x_845;
      } else {
        let x_848 : f32 = u_xlat13.y;
        x_841 = x_848;
      }
      let x_849 : f32 = x_841;
      hlslcc_movcTemp_1.y = x_849;
      let x_852 : bool = u_xlatb14.z;
      if (x_852) {
        let x_857 : f32 = u_xlat12.z;
        x_853 = x_857;
      } else {
        let x_860 : f32 = u_xlat13.z;
        x_853 = x_860;
      }
      let x_861 : f32 = x_853;
      hlslcc_movcTemp_1.z = x_861;
      let x_863 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_863;
      let x_865 : f32 = u_xlat12.y;
      let x_867 : f32 = u_xlat12.x;
      u_xlat48 = min(x_865, x_867);
      let x_870 : f32 = u_xlat12.z;
      let x_871 : f32 = u_xlat48;
      u_xlat48 = min(x_870, x_871);
      let x_873 : vec3<f32> = u_xlat1;
      let x_875 : vec4<f32> = x_52.unity_SpecCube1_ProbePosition;
      u_xlat1 = (x_873 + -(vec3<f32>(x_875.x, x_875.y, x_875.z)));
      let x_879 : vec3<f32> = u_xlat11;
      let x_880 : f32 = u_xlat48;
      let x_883 : vec3<f32> = u_xlat1;
      let x_884 : vec3<f32> = ((x_879 * vec3<f32>(x_880, x_880, x_880)) + x_883);
      let x_885 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
    }
    let x_891 : vec4<f32> = u_xlat6;
    let x_894 : f32 = u_xlat0.x;
    let x_895 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_891.x, x_891.y, x_891.z), x_894);
    u_xlat6 = x_895;
    let x_897 : f32 = u_xlat6.w;
    u_xlat0.x = (x_897 + -1.0f);
    let x_902 : f32 = x_52.unity_SpecCube1_HDR.w;
    let x_904 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_902 * x_904) + 1.0f);
    let x_909 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_909);
    let x_913 : f32 = u_xlat0.x;
    let x_915 : f32 = x_52.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_913 * x_915);
    let x_919 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_919);
    let x_923 : f32 = u_xlat0.x;
    let x_925 : f32 = x_52.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_923 * x_925);
    let x_928 : vec4<f32> = u_xlat6;
    let x_930 : vec3<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_930.x, x_930.x, x_930.x));
    let x_933 : f32 = u_xlat47;
    let x_935 : vec4<f32> = u_xlat9;
    let x_938 : vec3<f32> = u_xlat1;
    let x_940 : vec3<f32> = ((vec3<f32>(x_933, x_933, x_933) * vec3<f32>(x_935.x, x_935.y, x_935.z)) + -(x_938));
    let x_941 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
    let x_944 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    let x_946 : vec4<f32> = u_xlat6;
    let x_949 : vec3<f32> = u_xlat1;
    let x_950 : vec3<f32> = ((vec3<f32>(x_944.w, x_944.w, x_944.w) * vec3<f32>(x_946.x, x_946.y, x_946.z)) + x_949);
    let x_951 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  }
  let x_953 : vec4<f32> = u_xlat3;
  let x_955 : vec4<f32> = vs_COLOR0;
  u_xlat1 = ((vec3<f32>(x_953.x, x_953.y, x_953.z) * vec3<f32>(x_955.x, x_955.y, x_955.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_963 : f32 = x_52.x_Metallic;
  let x_965 : f32 = x_52.x_Metallic;
  let x_967 : f32 = x_52.x_Metallic;
  let x_968 : vec3<f32> = vec3<f32>(x_963, x_965, x_967);
  let x_973 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_968.x, x_968.y, x_968.z) * x_973) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_979 : f32 = x_52.x_Metallic;
  u_xlat0.x = ((-(x_979) * 0.959999979f) + 0.959999979f);
  let x_985 : vec3<f32> = u_xlat0;
  let x_987 : vec3<f32> = u_xlat4;
  let x_988 : vec3<f32> = (vec3<f32>(x_985.x, x_985.x, x_985.x) * x_987);
  let x_989 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec3<f32> = u_xlat15;
  let x_992 : f32 = u_xlat46;
  let x_996 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat15 = ((x_991 * vec3<f32>(x_992, x_992, x_992)) + vec3<f32>(x_996.x, x_996.y, x_996.z));
  let x_999 : vec3<f32> = u_xlat15;
  let x_1000 : vec3<f32> = u_xlat15;
  u_xlat46 = dot(x_999, x_1000);
  let x_1002 : f32 = u_xlat46;
  u_xlat46 = max(x_1002, 0.001f);
  let x_1005 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_1005);
  let x_1007 : vec3<f32> = u_xlat15;
  let x_1008 : f32 = u_xlat46;
  u_xlat15 = (x_1007 * vec3<f32>(x_1008, x_1008, x_1008));
  let x_1011 : vec4<f32> = u_xlat5;
  let x_1013 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(vec3<f32>(x_1011.x, x_1011.y, x_1011.z), vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat5;
  let x_1019 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1016.x, x_1016.y, x_1016.z), vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1024 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1024, 0.0f, 1.0f);
  let x_1028 : vec4<f32> = u_xlat5;
  let x_1030 : vec3<f32> = u_xlat15;
  u_xlat17 = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), x_1030);
  let x_1032 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1032, 0.0f, 1.0f);
  let x_1035 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  let x_1037 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(vec3<f32>(x_1035.x, x_1035.y, x_1035.z), x_1037);
  let x_1041 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_1041, 0.0f, 1.0f);
  let x_1046 : f32 = u_xlat15.x;
  let x_1048 : f32 = u_xlat15.x;
  u_xlat30 = (x_1046 * x_1048);
  let x_1050 : f32 = u_xlat30;
  let x_1052 : f32 = u_xlat49;
  u_xlat30 = dot(vec2<f32>(x_1050, x_1050), vec2<f32>(x_1052, x_1052));
  let x_1055 : f32 = u_xlat30;
  u_xlat30 = (x_1055 + -0.5f);
  let x_1060 : f32 = u_xlat2.x;
  u_xlat45 = (-(x_1060) + 1.0f);
  let x_1064 : f32 = u_xlat45;
  let x_1065 : f32 = u_xlat45;
  u_xlat32 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat32;
  let x_1068 : f32 = u_xlat32;
  u_xlat32 = (x_1067 * x_1068);
  let x_1070 : f32 = u_xlat45;
  let x_1071 : f32 = u_xlat32;
  u_xlat45 = (x_1070 * x_1071);
  let x_1073 : f32 = u_xlat30;
  let x_1074 : f32 = u_xlat45;
  u_xlat45 = ((x_1073 * x_1074) + 1.0f);
  let x_1077 : f32 = u_xlat46;
  u_xlat32 = (-(abs(x_1077)) + 1.0f);
  let x_1081 : f32 = u_xlat32;
  let x_1082 : f32 = u_xlat32;
  u_xlat47 = (x_1081 * x_1082);
  let x_1084 : f32 = u_xlat47;
  let x_1085 : f32 = u_xlat47;
  u_xlat47 = (x_1084 * x_1085);
  let x_1087 : f32 = u_xlat32;
  let x_1088 : f32 = u_xlat47;
  u_xlat32 = (x_1087 * x_1088);
  let x_1090 : f32 = u_xlat30;
  let x_1091 : f32 = u_xlat32;
  u_xlat30 = ((x_1090 * x_1091) + 1.0f);
  let x_1094 : f32 = u_xlat30;
  let x_1095 : f32 = u_xlat45;
  u_xlat30 = (x_1094 * x_1095);
  let x_1098 : f32 = u_xlat2.x;
  let x_1099 : f32 = u_xlat30;
  u_xlat30 = (x_1098 * x_1099);
  let x_1101 : f32 = u_xlat49;
  let x_1102 : f32 = u_xlat49;
  u_xlat45 = (x_1101 * x_1102);
  let x_1104 : f32 = u_xlat45;
  u_xlat45 = max(x_1104, 0.002f);
  let x_1107 : f32 = u_xlat45;
  u_xlat47 = (-(x_1107) + 1.0f);
  let x_1110 : f32 = u_xlat46;
  let x_1112 : f32 = u_xlat47;
  let x_1114 : f32 = u_xlat45;
  u_xlat48 = ((abs(x_1110) * x_1112) + x_1114);
  let x_1117 : f32 = u_xlat2.x;
  let x_1118 : f32 = u_xlat47;
  let x_1120 : f32 = u_xlat45;
  u_xlat47 = ((x_1117 * x_1118) + x_1120);
  let x_1122 : f32 = u_xlat46;
  let x_1124 : f32 = u_xlat47;
  u_xlat46 = (abs(x_1122) * x_1124);
  let x_1127 : f32 = u_xlat2.x;
  let x_1128 : f32 = u_xlat48;
  let x_1130 : f32 = u_xlat46;
  u_xlat46 = ((x_1127 * x_1128) + x_1130);
  let x_1132 : f32 = u_xlat46;
  u_xlat46 = (x_1132 + 0.00001f);
  let x_1135 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1135);
  let x_1137 : f32 = u_xlat45;
  let x_1138 : f32 = u_xlat45;
  u_xlat47 = (x_1137 * x_1138);
  let x_1140 : f32 = u_xlat17;
  let x_1141 : f32 = u_xlat47;
  let x_1143 : f32 = u_xlat17;
  u_xlat48 = ((x_1140 * x_1141) + -(x_1143));
  let x_1146 : f32 = u_xlat48;
  let x_1147 : f32 = u_xlat17;
  u_xlat17 = ((x_1146 * x_1147) + 1.0f);
  let x_1150 : f32 = u_xlat47;
  u_xlat47 = (x_1150 * 0.318309873f);
  let x_1153 : f32 = u_xlat17;
  let x_1154 : f32 = u_xlat17;
  u_xlat17 = ((x_1153 * x_1154) + 0.0000001f);
  let x_1158 : f32 = u_xlat47;
  let x_1159 : f32 = u_xlat17;
  u_xlat17 = (x_1158 / x_1159);
  let x_1161 : f32 = u_xlat46;
  let x_1162 : f32 = u_xlat17;
  u_xlat46 = (x_1161 * x_1162);
  let x_1165 : f32 = u_xlat2.x;
  let x_1166 : f32 = u_xlat46;
  u_xlat46 = (x_1165 * x_1166);
  let x_1168 : f32 = u_xlat46;
  u_xlat46 = (x_1168 * 3.141592741f);
  let x_1171 : f32 = u_xlat46;
  u_xlat46 = max(x_1171, 0.0f);
  let x_1173 : f32 = u_xlat45;
  let x_1174 : f32 = u_xlat45;
  u_xlat45 = ((x_1173 * x_1174) + 1.0f);
  let x_1177 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1177);
  let x_1179 : vec3<f32> = u_xlat1;
  let x_1180 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_1179, x_1180);
  let x_1185 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1185 == 0.0f));
  let x_1187 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1187);
  let x_1190 : f32 = u_xlat46;
  let x_1192 : f32 = u_xlat2.x;
  u_xlat46 = (x_1190 * x_1192);
  let x_1195 : f32 = u_xlat0.x;
  let x_1198 : f32 = x_52.x_Glossiness;
  u_xlat0.x = (-(x_1195) + x_1198);
  let x_1202 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1202 + 1.0f);
  let x_1206 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1206, 0.0f, 1.0f);
  let x_1209 : vec3<f32> = u_xlat7;
  let x_1210 : f32 = u_xlat30;
  let x_1213 : vec4<f32> = u_xlat8;
  let x_1215 : vec3<f32> = ((x_1209 * vec3<f32>(x_1210, x_1210, x_1210)) + vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
  let x_1216 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1215.z);
  let x_1218 : vec3<f32> = u_xlat7;
  let x_1219 : f32 = u_xlat46;
  u_xlat4 = (x_1218 * vec3<f32>(x_1219, x_1219, x_1219));
  let x_1223 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_1223) + 1.0f);
  let x_1228 : f32 = u_xlat15.x;
  let x_1230 : f32 = u_xlat15.x;
  u_xlat30 = (x_1228 * x_1230);
  let x_1232 : f32 = u_xlat30;
  let x_1233 : f32 = u_xlat30;
  u_xlat30 = (x_1232 * x_1233);
  let x_1236 : f32 = u_xlat15.x;
  let x_1237 : f32 = u_xlat30;
  u_xlat15.x = (x_1236 * x_1237);
  let x_1240 : vec3<f32> = u_xlat1;
  let x_1243 : vec3<f32> = (-(x_1240) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1244 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
  let x_1246 : vec4<f32> = u_xlat5;
  let x_1248 : vec3<f32> = u_xlat15;
  let x_1251 : vec3<f32> = u_xlat1;
  let x_1252 : vec3<f32> = ((vec3<f32>(x_1246.x, x_1246.y, x_1246.z) * vec3<f32>(x_1248.x, x_1248.x, x_1248.x)) + x_1251);
  let x_1253 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : vec3<f32> = u_xlat4;
  let x_1256 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1255 * vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1259 : vec4<f32> = u_xlat3;
  let x_1261 : vec4<f32> = u_xlat2;
  let x_1264 : vec3<f32> = u_xlat4;
  let x_1265 : vec3<f32> = ((vec3<f32>(x_1259.x, x_1259.y, x_1259.z) * vec3<f32>(x_1261.x, x_1261.y, x_1261.w)) + x_1264);
  let x_1266 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1265.x, x_1265.y, x_1266.z, x_1265.z);
  let x_1268 : vec4<f32> = u_xlat10;
  let x_1270 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1268.x, x_1268.y, x_1268.z) * vec3<f32>(x_1270, x_1270, x_1270));
  let x_1273 : vec3<f32> = u_xlat1;
  let x_1275 : vec3<f32> = u_xlat0;
  let x_1277 : vec3<f32> = (-(x_1273) + vec3<f32>(x_1275.x, x_1275.x, x_1275.x));
  let x_1278 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : f32 = u_xlat32;
  let x_1282 : vec4<f32> = u_xlat3;
  let x_1285 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1280, x_1280, x_1280) * vec3<f32>(x_1282.x, x_1282.y, x_1282.z)) + x_1285);
  let x_1287 : vec3<f32> = u_xlat15;
  let x_1288 : vec3<f32> = u_xlat1;
  let x_1290 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1287 * x_1288) + vec3<f32>(x_1290.x, x_1290.y, x_1290.w));
  let x_1293 : vec3<f32> = u_xlat0;
  let x_1296 : vec4<f32> = x_52.x_AmbientColor;
  u_xlat0 = (x_1293 + vec3<f32>(x_1296.x, x_1296.y, x_1296.z));
  let x_1300 : f32 = vs_TEXCOORD6;
  let x_1302 : f32 = x_52.x_ProjectionParams.y;
  u_xlat45 = (x_1300 / x_1302);
  let x_1304 : f32 = u_xlat45;
  u_xlat45 = (-(x_1304) + 1.0f);
  let x_1307 : f32 = u_xlat45;
  let x_1309 : f32 = x_52.x_ProjectionParams.z;
  u_xlat45 = (x_1307 * x_1309);
  let x_1311 : f32 = u_xlat45;
  u_xlat45 = max(x_1311, 0.0f);
  let x_1313 : f32 = u_xlat45;
  let x_1315 : f32 = x_52.unity_FogParams.x;
  u_xlat45 = (x_1313 * x_1315);
  let x_1317 : f32 = u_xlat45;
  let x_1318 : f32 = u_xlat45;
  u_xlat45 = (x_1317 * -(x_1318));
  let x_1321 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1321);
  let x_1323 : vec3<f32> = u_xlat0;
  let x_1326 : vec4<f32> = x_52.unity_FogColor;
  u_xlat0 = (x_1323 + -(vec3<f32>(x_1326.x, x_1326.y, x_1326.z)));
  let x_1332 : f32 = u_xlat45;
  let x_1334 : vec3<f32> = u_xlat0;
  let x_1337 : vec4<f32> = x_52.unity_FogColor;
  let x_1339 : vec3<f32> = ((vec3<f32>(x_1332, x_1332, x_1332) * x_1334) + vec3<f32>(x_1337.x, x_1337.y, x_1337.z));
  let x_1340 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1339.x, x_1339.y, x_1339.z, x_1340.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(7) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

