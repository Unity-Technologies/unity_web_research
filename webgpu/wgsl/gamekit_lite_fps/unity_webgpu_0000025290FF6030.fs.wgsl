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
  x_BumpScale : f32,
  @size(12)
  padding_3 : u32,
  x_EmissionColor : vec3<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_Cutoff : f32,
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

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat16 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_52 : PGlobals;

var<private> u_xlat49 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

var<private> u_xlat50 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_EmissionMap : sampler;

var<private> u_xlatb50 : bool;

var<private> u_xlatb51 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlat52 : f32;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var<uniform> x_322 : UnityInstancing_PerDraw2;

var<private> u_xlat54 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_261 : vec3<f32>;
  var x_448 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_641 : f32;
  var x_653 : f32;
  var x_665 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_824 : f32;
  var x_836 : f32;
  var x_848 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : u32 = vs_SV_InstanceID0;
  let x_20 : i32 = x_16.unity_BaseInstanceID;
  u_xlati0 = (bitcast<i32>(x_12) + x_20);
  let x_32 : f32 = vs_TEXCOORD0.w;
  u_xlat1.x = x_32;
  let x_38 : f32 = vs_TEXCOORD1.w;
  u_xlat1.y = x_38;
  let x_43 : f32 = vs_TEXCOORD2.w;
  u_xlat1.z = x_43;
  let x_47 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = x_52.x_WorldSpaceCameraPos;
  u_xlat16 = (-(x_47) + x_55);
  let x_58 : vec3<f32> = u_xlat16;
  let x_59 : vec3<f32> = u_xlat16;
  u_xlat49 = dot(x_58, x_59);
  let x_61 : f32 = u_xlat49;
  u_xlat49 = inverseSqrt(x_61);
  let x_65 : vec3<f32> = u_xlat16;
  let x_66 : f32 = u_xlat49;
  let x_68 : vec3<f32> = (x_65 * vec3<f32>(x_66, x_66, x_66));
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_85 : vec2<f32> = vs_TEXCOORD3;
  let x_86 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_85);
  u_xlat3 = x_86;
  let x_87 : vec4<f32> = u_xlat3;
  let x_91 : vec4<f32> = x_52.x_Color;
  u_xlat3 = (x_87 * x_91);
  let x_94 : vec4<f32> = u_xlat3;
  let x_97 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_106 : vec2<f32> = vs_TEXCOORD3;
  let x_107 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_106);
  let x_108 : vec3<f32> = vec3<f32>(x_107.x, x_107.y, x_107.w);
  let x_109 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_112 : f32 = u_xlat5.z;
  let x_114 : f32 = u_xlat5.x;
  u_xlat5.x = (x_112 * x_114);
  let x_117 : vec4<f32> = u_xlat5;
  let x_124 : vec2<f32> = ((vec2<f32>(x_117.x, x_117.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_125 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_124.x, x_124.y, x_125.z, x_125.w);
  let x_127 : vec4<f32> = u_xlat5;
  let x_132 : f32 = x_52.x_BumpScale;
  let x_134 : vec2<f32> = (vec2<f32>(x_127.x, x_127.y) * vec2<f32>(x_132, x_132));
  let x_135 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_134.x, x_134.y, x_135.z, x_135.w);
  let x_138 : vec4<f32> = u_xlat5;
  let x_140 : vec4<f32> = u_xlat5;
  u_xlat50 = dot(vec2<f32>(x_138.x, x_138.y), vec2<f32>(x_140.x, x_140.y));
  let x_143 : f32 = u_xlat50;
  u_xlat50 = min(x_143, 1.0f);
  let x_146 : f32 = u_xlat50;
  u_xlat50 = (-(x_146) + 1.0f);
  let x_149 : f32 = u_xlat50;
  u_xlat5.z = sqrt(x_149);
  let x_152 : vec4<f32> = u_xlat5;
  let x_154 : vec4<f32> = u_xlat5;
  u_xlat50 = dot(vec3<f32>(x_152.x, x_152.y, x_152.z), vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_157);
  let x_159 : f32 = u_xlat50;
  let x_161 : vec4<f32> = u_xlat5;
  let x_163 : vec3<f32> = (vec3<f32>(x_159, x_159, x_159) * vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_172 : vec2<f32> = vs_TEXCOORD3;
  let x_173 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_172);
  u_xlat6 = vec3<f32>(x_173.x, x_173.y, x_173.z);
  let x_176 : f32 = u_xlat3.w;
  let x_178 : f32 = vs_COLOR0.w;
  let x_182 : f32 = x_52.x_Cutoff;
  u_xlat50 = ((x_176 * x_178) + -(x_182));
  let x_185 : f32 = u_xlat50;
  u_xlat50 = (x_185 + 0.0001f);
  let x_191 : f32 = u_xlat50;
  u_xlatb50 = (x_191 < 0.0f);
  let x_194 : bool = u_xlatb50;
  if (((select(0i, 1i, x_194) * -1i) != 0i)) {
    discard;
  }
  let x_203 : i32 = u_xlati0;
  u_xlati0 = (x_203 * 7i);
  let x_208 : f32 = x_52.unity_ProbeVolumeParams.x;
  u_xlatb50 = (x_208 == 1.0f);
  let x_210 : bool = u_xlatb50;
  if (x_210) {
    let x_215 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb51 = (x_215 == 1.0f);
    let x_218 : vec4<f32> = vs_TEXCOORD1;
    let x_222 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_224 : vec3<f32> = (vec3<f32>(x_218.w, x_218.w, x_218.w) * vec3<f32>(x_222.x, x_222.y, x_222.z));
    let x_225 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_228 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_230 : vec4<f32> = vs_TEXCOORD0;
    let x_233 : vec4<f32> = u_xlat7;
    let x_235 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(x_230.w, x_230.w, x_230.w)) + vec3<f32>(x_233.x, x_233.y, x_233.z));
    let x_236 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_240 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_242 : vec4<f32> = vs_TEXCOORD2;
    let x_245 : vec4<f32> = u_xlat7;
    let x_247 : vec3<f32> = ((vec3<f32>(x_240.x, x_240.y, x_240.z) * vec3<f32>(x_242.w, x_242.w, x_242.w)) + vec3<f32>(x_245.x, x_245.y, x_245.z));
    let x_248 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_250 : vec4<f32> = u_xlat7;
    let x_254 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_256 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) + vec3<f32>(x_254.x, x_254.y, x_254.z));
    let x_257 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_259 : bool = u_xlatb51;
    if (x_259) {
      let x_264 : vec4<f32> = u_xlat7;
      x_261 = vec3<f32>(x_264.x, x_264.y, x_264.z);
    } else {
      let x_267 : vec3<f32> = u_xlat1;
      x_261 = x_267;
    }
    let x_268 : vec3<f32> = x_261;
    let x_269 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat7;
    let x_275 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + -(x_275));
    let x_278 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat7;
    let x_284 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * x_284);
    let x_286 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_285.z);
    let x_290 : f32 = u_xlat7.y;
    u_xlat51 = ((x_290 * 0.25f) + 0.75f);
    let x_297 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat52 = ((x_297 * 0.5f) + 0.75f);
    let x_301 : f32 = u_xlat51;
    let x_302 : f32 = u_xlat52;
    u_xlat7.x = max(x_301, x_302);
    let x_313 : vec4<f32> = u_xlat7;
    let x_315 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_313.x, x_313.z, x_313.w));
    u_xlat7 = x_315;
  } else {
    let x_323 : i32 = u_xlati0;
    let x_327 : vec4<f32> = x_322.unity_Builtins2Array[(x_323 / 7i)].unity_SHCArray;
    u_xlat7 = vec4<f32>(x_327.w, x_327.w, x_327.w, x_327.w);
  }
  let x_329 : vec4<f32> = u_xlat7;
  let x_331 : vec4<f32> = x_52.unity_OcclusionMaskSelector;
  u_xlat51 = dot(x_329, x_331);
  let x_333 : f32 = u_xlat51;
  u_xlat51 = clamp(x_333, 0.0f, 1.0f);
  let x_335 : vec4<f32> = vs_TEXCOORD0;
  let x_337 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_341 : vec4<f32> = vs_TEXCOORD1;
  let x_343 : vec4<f32> = u_xlat5;
  u_xlat7.y = dot(vec3<f32>(x_341.x, x_341.y, x_341.z), vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_347 : vec4<f32> = vs_TEXCOORD2;
  let x_349 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_347.x, x_347.y, x_347.z), vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_353 : vec4<f32> = u_xlat7;
  let x_355 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_353.x, x_353.y, x_353.z), vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_358);
  let x_360 : f32 = u_xlat52;
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec3<f32> = (vec3<f32>(x_360, x_360, x_360) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_369 : f32 = x_52.x_Glossiness;
  u_xlat52 = (-(x_369) + 1.0f);
  let x_373 : vec4<f32> = u_xlat2;
  let x_376 : vec4<f32> = u_xlat5;
  u_xlat54 = dot(-(vec3<f32>(x_373.x, x_373.y, x_373.z)), vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : f32 = u_xlat54;
  let x_380 : f32 = u_xlat54;
  u_xlat54 = (x_379 + x_380);
  let x_382 : vec4<f32> = u_xlat5;
  let x_384 : f32 = u_xlat54;
  let x_388 : vec4<f32> = u_xlat2;
  let x_391 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * -(vec3<f32>(x_384, x_384, x_384))) + -(vec3<f32>(x_388.x, x_388.y, x_388.z)));
  let x_392 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_395 : f32 = u_xlat51;
  let x_399 : vec4<f32> = x_52.x_LightColor0;
  u_xlat8 = (vec3<f32>(x_395, x_395, x_395) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : bool = u_xlatb50;
  if (x_402) {
    let x_406 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb50 = (x_406 == 1.0f);
    let x_409 : vec4<f32> = vs_TEXCOORD1;
    let x_412 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_414 : vec3<f32> = (vec3<f32>(x_409.w, x_409.w, x_409.w) * vec3<f32>(x_412.x, x_412.y, x_412.z));
    let x_415 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
    let x_418 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_420 : vec4<f32> = vs_TEXCOORD0;
    let x_423 : vec4<f32> = u_xlat9;
    let x_425 : vec3<f32> = ((vec3<f32>(x_418.x, x_418.y, x_418.z) * vec3<f32>(x_420.w, x_420.w, x_420.w)) + vec3<f32>(x_423.x, x_423.y, x_423.z));
    let x_426 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
    let x_429 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_431 : vec4<f32> = vs_TEXCOORD2;
    let x_434 : vec4<f32> = u_xlat9;
    let x_436 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431.w, x_431.w, x_431.w)) + vec3<f32>(x_434.x, x_434.y, x_434.z));
    let x_437 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
    let x_439 : vec4<f32> = u_xlat9;
    let x_442 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_444 : vec3<f32> = (vec3<f32>(x_439.x, x_439.y, x_439.z) + vec3<f32>(x_442.x, x_442.y, x_442.z));
    let x_445 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
    let x_447 : bool = u_xlatb50;
    if (x_447) {
      let x_451 : vec4<f32> = u_xlat9;
      x_448 = vec3<f32>(x_451.x, x_451.y, x_451.z);
    } else {
      let x_454 : vec3<f32> = u_xlat1;
      x_448 = x_454;
    }
    let x_455 : vec3<f32> = x_448;
    let x_456 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
    let x_458 : vec4<f32> = u_xlat9;
    let x_461 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_463 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) + -(x_461));
    let x_464 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
    let x_466 : vec4<f32> = u_xlat9;
    let x_469 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_470 : vec3<f32> = (vec3<f32>(x_466.x, x_466.y, x_466.z) * x_469);
    let x_471 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_471.x, x_470.x, x_470.y, x_470.z);
    let x_474 : f32 = u_xlat9.y;
    u_xlat50 = (x_474 * 0.25f);
    let x_477 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat51 = (x_477 * 0.5f);
    let x_480 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat54 = ((-(x_480) * 0.5f) + 0.25f);
    let x_484 : f32 = u_xlat50;
    let x_485 : f32 = u_xlat51;
    u_xlat50 = max(x_484, x_485);
    let x_487 : f32 = u_xlat54;
    let x_488 : f32 = u_xlat50;
    u_xlat9.x = min(x_487, x_488);
    let x_495 : vec4<f32> = u_xlat9;
    let x_497 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_495.x, x_495.z, x_495.w));
    u_xlat10 = x_497;
    let x_499 : vec4<f32> = u_xlat9;
    let x_502 : vec3<f32> = (vec3<f32>(x_499.x, x_499.z, x_499.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_503 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
    let x_508 : vec4<f32> = u_xlat11;
    let x_510 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_508.x, x_508.y, x_508.z));
    u_xlat11 = x_510;
    let x_511 : vec4<f32> = u_xlat9;
    let x_514 : vec3<f32> = (vec3<f32>(x_511.x, x_511.z, x_511.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_515 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
    let x_520 : vec4<f32> = u_xlat9;
    let x_522 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_520.x, x_520.y, x_520.z));
    u_xlat9 = x_522;
    u_xlat5.w = 1.0f;
    let x_524 : vec4<f32> = u_xlat10;
    let x_525 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_524, x_525);
    let x_528 : vec4<f32> = u_xlat11;
    let x_529 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_528, x_529);
    let x_532 : vec4<f32> = u_xlat9;
    let x_533 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_532, x_533);
  } else {
    u_xlat5.w = 1.0f;
    let x_538 : i32 = u_xlati0;
    let x_541 : vec4<f32> = x_322.unity_Builtins2Array[(x_538 / 7i)].unity_SHArArray;
    let x_542 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_541, x_542);
    let x_545 : i32 = u_xlati0;
    let x_548 : vec4<f32> = x_322.unity_Builtins2Array[(x_545 / 7i)].unity_SHAgArray;
    let x_549 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_548, x_549);
    let x_552 : i32 = u_xlati0;
    let x_555 : vec4<f32> = x_322.unity_Builtins2Array[(x_552 / 7i)].unity_SHAbArray;
    let x_556 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_555, x_556);
  }
  let x_559 : vec4<f32> = u_xlat10;
  let x_563 : vec3<f32> = vs_TEXCOORD4;
  let x_564 : vec3<f32> = (vec3<f32>(x_559.x, x_559.y, x_559.z) + x_563);
  let x_565 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_567 : vec4<f32> = u_xlat9;
  let x_570 : vec3<f32> = max(vec3<f32>(x_567.x, x_567.y, x_567.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_571 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
  let x_576 : f32 = x_52.unity_SpecCube0_ProbePosition.w;
  u_xlatb0 = (0.0f < x_576);
  let x_578 : bool = u_xlatb0;
  if (x_578) {
    let x_582 : vec4<f32> = u_xlat7;
    let x_584 : vec4<f32> = u_xlat7;
    u_xlat0.x = dot(vec3<f32>(x_582.x, x_582.y, x_582.z), vec3<f32>(x_584.x, x_584.y, x_584.z));
    let x_589 : f32 = u_xlat0.x;
    u_xlat0.x = inverseSqrt(x_589);
    let x_592 : vec3<f32> = u_xlat0;
    let x_594 : vec4<f32> = u_xlat7;
    let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * vec3<f32>(x_594.x, x_594.y, x_594.z));
    let x_597 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
    let x_599 : vec3<f32> = u_xlat1;
    let x_602 : vec4<f32> = x_52.unity_SpecCube0_BoxMax;
    let x_604 : vec3<f32> = (-(x_599) + vec3<f32>(x_602.x, x_602.y, x_602.z));
    let x_605 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
    let x_607 : vec4<f32> = u_xlat11;
    let x_609 : vec4<f32> = u_xlat10;
    let x_611 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) / vec3<f32>(x_609.x, x_609.y, x_609.z));
    let x_612 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_611.x, x_611.y, x_611.z, x_612.w);
    let x_615 : vec3<f32> = u_xlat1;
    let x_619 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(x_615) + vec3<f32>(x_619.x, x_619.y, x_619.z));
    let x_622 : vec3<f32> = u_xlat12;
    let x_623 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_622 / vec3<f32>(x_623.x, x_623.y, x_623.z));
    let x_630 : vec4<f32> = u_xlat10;
    let x_633 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_630.x, x_630.y, x_630.z, x_630.x));
    u_xlatb13 = vec3<bool>(x_633.x, x_633.y, x_633.z);
    let x_637 : vec4<f32> = u_xlat11;
    hlslcc_movcTemp = x_637;
    let x_639 : bool = u_xlatb13.x;
    if (x_639) {
      let x_645 : f32 = u_xlat11.x;
      x_641 = x_645;
    } else {
      let x_648 : f32 = u_xlat12.x;
      x_641 = x_648;
    }
    let x_649 : f32 = x_641;
    hlslcc_movcTemp.x = x_649;
    let x_652 : bool = u_xlatb13.y;
    if (x_652) {
      let x_657 : f32 = u_xlat11.y;
      x_653 = x_657;
    } else {
      let x_660 : f32 = u_xlat12.y;
      x_653 = x_660;
    }
    let x_661 : f32 = x_653;
    hlslcc_movcTemp.y = x_661;
    let x_664 : bool = u_xlatb13.z;
    if (x_664) {
      let x_669 : f32 = u_xlat11.z;
      x_665 = x_669;
    } else {
      let x_672 : f32 = u_xlat12.z;
      x_665 = x_672;
    }
    let x_673 : f32 = x_665;
    hlslcc_movcTemp.z = x_673;
    let x_675 : vec4<f32> = hlslcc_movcTemp;
    u_xlat11 = x_675;
    let x_677 : f32 = u_xlat11.y;
    let x_679 : f32 = u_xlat11.x;
    u_xlat0.x = min(x_677, x_679);
    let x_683 : f32 = u_xlat11.z;
    let x_685 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_683, x_685);
    let x_688 : vec3<f32> = u_xlat1;
    let x_690 : vec4<f32> = x_52.unity_SpecCube0_ProbePosition;
    let x_693 : vec3<f32> = (x_688 + -(vec3<f32>(x_690.x, x_690.y, x_690.z)));
    let x_694 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    let x_696 : vec4<f32> = u_xlat10;
    let x_698 : vec3<f32> = u_xlat0;
    let x_701 : vec4<f32> = u_xlat11;
    let x_703 : vec3<f32> = ((vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_698.x, x_698.x, x_698.x)) + vec3<f32>(x_701.x, x_701.y, x_701.z));
    let x_704 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  } else {
    let x_707 : vec4<f32> = u_xlat7;
    let x_708 : vec3<f32> = vec3<f32>(x_707.x, x_707.y, x_707.z);
    let x_709 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  }
  let x_711 : f32 = u_xlat52;
  u_xlat0.x = ((-(x_711) * 0.699999988f) + 1.700000048f);
  let x_719 : f32 = u_xlat0.x;
  let x_720 : f32 = u_xlat52;
  u_xlat0.x = (x_719 * x_720);
  let x_724 : f32 = u_xlat0.x;
  u_xlat0.x = (x_724 * 6.0f);
  let x_736 : vec4<f32> = u_xlat10;
  let x_739 : f32 = u_xlat0.x;
  let x_740 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_736.x, x_736.y, x_736.z), x_739);
  u_xlat10 = x_740;
  let x_742 : f32 = u_xlat10.w;
  u_xlat50 = (x_742 + -1.0f);
  let x_745 : f32 = x_52.unity_SpecCube0_HDR.w;
  let x_746 : f32 = u_xlat50;
  u_xlat50 = ((x_745 * x_746) + 1.0f);
  let x_749 : f32 = u_xlat50;
  u_xlat50 = log2(x_749);
  let x_751 : f32 = u_xlat50;
  let x_753 : f32 = x_52.unity_SpecCube0_HDR.y;
  u_xlat50 = (x_751 * x_753);
  let x_755 : f32 = u_xlat50;
  u_xlat50 = exp2(x_755);
  let x_757 : f32 = u_xlat50;
  let x_759 : f32 = x_52.unity_SpecCube0_HDR.x;
  u_xlat50 = (x_757 * x_759);
  let x_761 : vec4<f32> = u_xlat10;
  let x_763 : f32 = u_xlat50;
  let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) * vec3<f32>(x_763, x_763, x_763));
  let x_766 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_769 : f32 = x_52.unity_SpecCube0_BoxMin.w;
  u_xlatb51 = (x_769 < 0.999989986f);
  let x_772 : bool = u_xlatb51;
  if (x_772) {
    let x_777 : f32 = x_52.unity_SpecCube1_ProbePosition.w;
    u_xlatb51 = (0.0f < x_777);
    let x_779 : bool = u_xlatb51;
    if (x_779) {
      let x_782 : vec4<f32> = u_xlat7;
      let x_784 : vec4<f32> = u_xlat7;
      u_xlat51 = dot(vec3<f32>(x_782.x, x_782.y, x_782.z), vec3<f32>(x_784.x, x_784.y, x_784.z));
      let x_787 : f32 = u_xlat51;
      u_xlat51 = inverseSqrt(x_787);
      let x_789 : f32 = u_xlat51;
      let x_791 : vec4<f32> = u_xlat7;
      u_xlat12 = (vec3<f32>(x_789, x_789, x_789) * vec3<f32>(x_791.x, x_791.y, x_791.z));
      let x_795 : vec3<f32> = u_xlat1;
      let x_798 : vec4<f32> = x_52.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(x_795) + vec3<f32>(x_798.x, x_798.y, x_798.z));
      let x_801 : vec3<f32> = u_xlat13;
      let x_802 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_801 / x_802);
      let x_805 : vec3<f32> = u_xlat1;
      let x_809 : vec4<f32> = x_52.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(x_805) + vec3<f32>(x_809.x, x_809.y, x_809.z));
      let x_812 : vec3<f32> = u_xlat14;
      let x_813 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_812 / x_813);
      let x_816 : vec3<f32> = u_xlat12;
      let x_818 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_816.x, x_816.y, x_816.z, x_816.x));
      u_xlatb15 = vec3<bool>(x_818.x, x_818.y, x_818.z);
      let x_821 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_821;
      let x_823 : bool = u_xlatb15.x;
      if (x_823) {
        let x_828 : f32 = u_xlat13.x;
        x_824 = x_828;
      } else {
        let x_831 : f32 = u_xlat14.x;
        x_824 = x_831;
      }
      let x_832 : f32 = x_824;
      hlslcc_movcTemp_1.x = x_832;
      let x_835 : bool = u_xlatb15.y;
      if (x_835) {
        let x_840 : f32 = u_xlat13.y;
        x_836 = x_840;
      } else {
        let x_843 : f32 = u_xlat14.y;
        x_836 = x_843;
      }
      let x_844 : f32 = x_836;
      hlslcc_movcTemp_1.y = x_844;
      let x_847 : bool = u_xlatb15.z;
      if (x_847) {
        let x_852 : f32 = u_xlat13.z;
        x_848 = x_852;
      } else {
        let x_855 : f32 = u_xlat14.z;
        x_848 = x_855;
      }
      let x_856 : f32 = x_848;
      hlslcc_movcTemp_1.z = x_856;
      let x_858 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_858;
      let x_860 : f32 = u_xlat13.y;
      let x_862 : f32 = u_xlat13.x;
      u_xlat51 = min(x_860, x_862);
      let x_865 : f32 = u_xlat13.z;
      let x_866 : f32 = u_xlat51;
      u_xlat51 = min(x_865, x_866);
      let x_868 : vec3<f32> = u_xlat1;
      let x_870 : vec4<f32> = x_52.unity_SpecCube1_ProbePosition;
      u_xlat1 = (x_868 + -(vec3<f32>(x_870.x, x_870.y, x_870.z)));
      let x_874 : vec3<f32> = u_xlat12;
      let x_875 : f32 = u_xlat51;
      let x_878 : vec3<f32> = u_xlat1;
      let x_879 : vec3<f32> = ((x_874 * vec3<f32>(x_875, x_875, x_875)) + x_878);
      let x_880 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
    }
    let x_886 : vec4<f32> = u_xlat7;
    let x_889 : f32 = u_xlat0.x;
    let x_890 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_886.x, x_886.y, x_886.z), x_889);
    u_xlat7 = x_890;
    let x_892 : f32 = u_xlat7.w;
    u_xlat0.x = (x_892 + -1.0f);
    let x_897 : f32 = x_52.unity_SpecCube1_HDR.w;
    let x_899 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_897 * x_899) + 1.0f);
    let x_904 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_904);
    let x_908 : f32 = u_xlat0.x;
    let x_910 : f32 = x_52.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_908 * x_910);
    let x_914 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_914);
    let x_918 : f32 = u_xlat0.x;
    let x_920 : f32 = x_52.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_918 * x_920);
    let x_923 : vec4<f32> = u_xlat7;
    let x_925 : vec3<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_923.x, x_923.y, x_923.z) * vec3<f32>(x_925.x, x_925.x, x_925.x));
    let x_928 : f32 = u_xlat50;
    let x_930 : vec4<f32> = u_xlat10;
    let x_933 : vec3<f32> = u_xlat1;
    let x_935 : vec3<f32> = ((vec3<f32>(x_928, x_928, x_928) * vec3<f32>(x_930.x, x_930.y, x_930.z)) + -(x_933));
    let x_936 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
    let x_939 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    let x_941 : vec4<f32> = u_xlat7;
    let x_944 : vec3<f32> = u_xlat1;
    let x_945 : vec3<f32> = ((vec3<f32>(x_939.w, x_939.w, x_939.w) * vec3<f32>(x_941.x, x_941.y, x_941.z)) + x_944);
    let x_946 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  }
  let x_948 : vec4<f32> = u_xlat3;
  let x_950 : vec4<f32> = vs_COLOR0;
  u_xlat1 = ((vec3<f32>(x_948.x, x_948.y, x_948.z) * vec3<f32>(x_950.x, x_950.y, x_950.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_958 : f32 = x_52.x_Metallic;
  let x_960 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_958, x_958, x_958) * x_960) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_966 : f32 = x_52.x_Metallic;
  u_xlat0.x = ((-(x_966) * 0.959999979f) + 0.959999979f);
  let x_972 : vec3<f32> = u_xlat0;
  let x_974 : vec3<f32> = u_xlat4;
  let x_975 : vec3<f32> = (vec3<f32>(x_972.x, x_972.x, x_972.x) * x_974);
  let x_976 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec3<f32> = u_xlat16;
  let x_979 : f32 = u_xlat49;
  let x_983 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat16 = ((x_978 * vec3<f32>(x_979, x_979, x_979)) + vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec3<f32> = u_xlat16;
  let x_987 : vec3<f32> = u_xlat16;
  u_xlat49 = dot(x_986, x_987);
  let x_989 : f32 = u_xlat49;
  u_xlat49 = max(x_989, 0.001f);
  let x_992 : f32 = u_xlat49;
  u_xlat49 = inverseSqrt(x_992);
  let x_994 : vec3<f32> = u_xlat16;
  let x_995 : f32 = u_xlat49;
  u_xlat16 = (x_994 * vec3<f32>(x_995, x_995, x_995));
  let x_998 : vec4<f32> = u_xlat5;
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat5;
  let x_1006 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1003.x, x_1003.y, x_1003.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1011 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1011, 0.0f, 1.0f);
  let x_1015 : vec4<f32> = u_xlat5;
  let x_1017 : vec3<f32> = u_xlat16;
  u_xlat18 = dot(vec3<f32>(x_1015.x, x_1015.y, x_1015.z), x_1017);
  let x_1019 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1019, 0.0f, 1.0f);
  let x_1022 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  let x_1024 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(vec3<f32>(x_1022.x, x_1022.y, x_1022.z), x_1024);
  let x_1028 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1028, 0.0f, 1.0f);
  let x_1033 : f32 = u_xlat16.x;
  let x_1035 : f32 = u_xlat16.x;
  u_xlat32 = (x_1033 * x_1035);
  let x_1037 : f32 = u_xlat32;
  let x_1039 : f32 = u_xlat52;
  u_xlat32 = dot(vec2<f32>(x_1037, x_1037), vec2<f32>(x_1039, x_1039));
  let x_1042 : f32 = u_xlat32;
  u_xlat32 = (x_1042 + -0.5f);
  let x_1047 : f32 = u_xlat2.x;
  u_xlat48 = (-(x_1047) + 1.0f);
  let x_1051 : f32 = u_xlat48;
  let x_1052 : f32 = u_xlat48;
  u_xlat34 = (x_1051 * x_1052);
  let x_1054 : f32 = u_xlat34;
  let x_1055 : f32 = u_xlat34;
  u_xlat34 = (x_1054 * x_1055);
  let x_1057 : f32 = u_xlat48;
  let x_1058 : f32 = u_xlat34;
  u_xlat48 = (x_1057 * x_1058);
  let x_1060 : f32 = u_xlat32;
  let x_1061 : f32 = u_xlat48;
  u_xlat48 = ((x_1060 * x_1061) + 1.0f);
  let x_1064 : f32 = u_xlat49;
  u_xlat34 = (-(abs(x_1064)) + 1.0f);
  let x_1068 : f32 = u_xlat34;
  let x_1069 : f32 = u_xlat34;
  u_xlat50 = (x_1068 * x_1069);
  let x_1071 : f32 = u_xlat50;
  let x_1072 : f32 = u_xlat50;
  u_xlat50 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat34;
  let x_1075 : f32 = u_xlat50;
  u_xlat34 = (x_1074 * x_1075);
  let x_1077 : f32 = u_xlat32;
  let x_1078 : f32 = u_xlat34;
  u_xlat32 = ((x_1077 * x_1078) + 1.0f);
  let x_1081 : f32 = u_xlat32;
  let x_1082 : f32 = u_xlat48;
  u_xlat32 = (x_1081 * x_1082);
  let x_1085 : f32 = u_xlat2.x;
  let x_1086 : f32 = u_xlat32;
  u_xlat32 = (x_1085 * x_1086);
  let x_1088 : f32 = u_xlat52;
  let x_1089 : f32 = u_xlat52;
  u_xlat48 = (x_1088 * x_1089);
  let x_1091 : f32 = u_xlat48;
  u_xlat48 = max(x_1091, 0.002f);
  let x_1094 : f32 = u_xlat48;
  u_xlat50 = (-(x_1094) + 1.0f);
  let x_1097 : f32 = u_xlat49;
  let x_1099 : f32 = u_xlat50;
  let x_1101 : f32 = u_xlat48;
  u_xlat51 = ((abs(x_1097) * x_1099) + x_1101);
  let x_1104 : f32 = u_xlat2.x;
  let x_1105 : f32 = u_xlat50;
  let x_1107 : f32 = u_xlat48;
  u_xlat50 = ((x_1104 * x_1105) + x_1107);
  let x_1109 : f32 = u_xlat49;
  let x_1111 : f32 = u_xlat50;
  u_xlat49 = (abs(x_1109) * x_1111);
  let x_1114 : f32 = u_xlat2.x;
  let x_1115 : f32 = u_xlat51;
  let x_1117 : f32 = u_xlat49;
  u_xlat49 = ((x_1114 * x_1115) + x_1117);
  let x_1119 : f32 = u_xlat49;
  u_xlat49 = (x_1119 + 0.00001f);
  let x_1122 : f32 = u_xlat49;
  u_xlat49 = (0.5f / x_1122);
  let x_1124 : f32 = u_xlat48;
  let x_1125 : f32 = u_xlat48;
  u_xlat50 = (x_1124 * x_1125);
  let x_1127 : f32 = u_xlat18;
  let x_1128 : f32 = u_xlat50;
  let x_1130 : f32 = u_xlat18;
  u_xlat51 = ((x_1127 * x_1128) + -(x_1130));
  let x_1133 : f32 = u_xlat51;
  let x_1134 : f32 = u_xlat18;
  u_xlat18 = ((x_1133 * x_1134) + 1.0f);
  let x_1137 : f32 = u_xlat50;
  u_xlat50 = (x_1137 * 0.318309873f);
  let x_1140 : f32 = u_xlat18;
  let x_1141 : f32 = u_xlat18;
  u_xlat18 = ((x_1140 * x_1141) + 0.0000001f);
  let x_1145 : f32 = u_xlat50;
  let x_1146 : f32 = u_xlat18;
  u_xlat18 = (x_1145 / x_1146);
  let x_1148 : f32 = u_xlat49;
  let x_1149 : f32 = u_xlat18;
  u_xlat49 = (x_1148 * x_1149);
  let x_1152 : f32 = u_xlat2.x;
  let x_1153 : f32 = u_xlat49;
  u_xlat49 = (x_1152 * x_1153);
  let x_1155 : f32 = u_xlat49;
  u_xlat49 = (x_1155 * 3.141592741f);
  let x_1158 : f32 = u_xlat49;
  u_xlat49 = max(x_1158, 0.0f);
  let x_1160 : f32 = u_xlat48;
  let x_1161 : f32 = u_xlat48;
  u_xlat48 = ((x_1160 * x_1161) + 1.0f);
  let x_1164 : f32 = u_xlat48;
  u_xlat48 = (1.0f / x_1164);
  let x_1166 : vec3<f32> = u_xlat1;
  let x_1167 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_1166, x_1167);
  let x_1172 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1172 == 0.0f));
  let x_1174 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1174);
  let x_1177 : f32 = u_xlat49;
  let x_1179 : f32 = u_xlat2.x;
  u_xlat49 = (x_1177 * x_1179);
  let x_1182 : f32 = u_xlat0.x;
  let x_1185 : f32 = x_52.x_Glossiness;
  u_xlat0.x = (-(x_1182) + x_1185);
  let x_1189 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1189 + 1.0f);
  let x_1193 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1193, 0.0f, 1.0f);
  let x_1196 : vec3<f32> = u_xlat8;
  let x_1197 : f32 = u_xlat32;
  let x_1200 : vec4<f32> = u_xlat9;
  let x_1202 : vec3<f32> = ((x_1196 * vec3<f32>(x_1197, x_1197, x_1197)) + vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1202.z);
  let x_1205 : vec3<f32> = u_xlat8;
  let x_1206 : f32 = u_xlat49;
  u_xlat4 = (x_1205 * vec3<f32>(x_1206, x_1206, x_1206));
  let x_1210 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1210) + 1.0f);
  let x_1215 : f32 = u_xlat16.x;
  let x_1217 : f32 = u_xlat16.x;
  u_xlat32 = (x_1215 * x_1217);
  let x_1219 : f32 = u_xlat32;
  let x_1220 : f32 = u_xlat32;
  u_xlat32 = (x_1219 * x_1220);
  let x_1223 : f32 = u_xlat16.x;
  let x_1224 : f32 = u_xlat32;
  u_xlat16.x = (x_1223 * x_1224);
  let x_1227 : vec3<f32> = u_xlat1;
  let x_1230 : vec3<f32> = (-(x_1227) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1231 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : vec4<f32> = u_xlat5;
  let x_1235 : vec3<f32> = u_xlat16;
  let x_1238 : vec3<f32> = u_xlat1;
  let x_1239 : vec3<f32> = ((vec3<f32>(x_1233.x, x_1233.y, x_1233.z) * vec3<f32>(x_1235.x, x_1235.x, x_1235.x)) + x_1238);
  let x_1240 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec3<f32> = u_xlat4;
  let x_1243 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1242 * vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = u_xlat3;
  let x_1248 : vec4<f32> = u_xlat2;
  let x_1251 : vec3<f32> = u_xlat4;
  let x_1252 : vec3<f32> = ((vec3<f32>(x_1246.x, x_1246.y, x_1246.z) * vec3<f32>(x_1248.x, x_1248.y, x_1248.w)) + x_1251);
  let x_1253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1252.x, x_1252.y, x_1253.z, x_1252.z);
  let x_1255 : vec4<f32> = u_xlat11;
  let x_1257 : f32 = u_xlat48;
  u_xlat16 = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(x_1257, x_1257, x_1257));
  let x_1260 : vec3<f32> = u_xlat1;
  let x_1262 : vec3<f32> = u_xlat0;
  let x_1264 : vec3<f32> = (-(x_1260) + vec3<f32>(x_1262.x, x_1262.x, x_1262.x));
  let x_1265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
  let x_1267 : f32 = u_xlat34;
  let x_1269 : vec4<f32> = u_xlat3;
  let x_1272 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1267, x_1267, x_1267) * vec3<f32>(x_1269.x, x_1269.y, x_1269.z)) + x_1272);
  let x_1274 : vec3<f32> = u_xlat16;
  let x_1275 : vec3<f32> = u_xlat1;
  let x_1277 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1274 * x_1275) + vec3<f32>(x_1277.x, x_1277.y, x_1277.w));
  let x_1282 : vec3<f32> = u_xlat6;
  let x_1285 : f32 = x_52.x_EmissionColor.x;
  let x_1287 : f32 = x_52.x_EmissionColor.y;
  let x_1289 : f32 = x_52.x_EmissionColor.z;
  let x_1292 : vec3<f32> = u_xlat0;
  let x_1293 : vec3<f32> = ((x_1282 * vec3<f32>(x_1285, x_1287, x_1289)) + x_1292);
  let x_1294 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1294.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(6) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

