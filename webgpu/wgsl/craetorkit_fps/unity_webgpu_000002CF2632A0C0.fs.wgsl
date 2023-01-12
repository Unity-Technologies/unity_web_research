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

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(1) @binding(2) var<uniform> x_374 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

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
  var u_xlat6 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlatb48 : bool;
  var u_xlatb49 : bool;
  var x_313 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat50 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var x_528 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatb0 : bool;
  var u_xlat0 : vec3<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_720 : f32;
  var x_732 : f32;
  var x_744 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_905 : f32;
  var x_917 : f32;
  var x_929 : f32;
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
  let x_207 : f32 = x_52.unity_MatrixV[0i].z;
  u_xlat6.x = x_207;
  let x_210 : f32 = x_52.unity_MatrixV[1i].z;
  u_xlat6.y = x_210;
  let x_214 : f32 = x_52.unity_MatrixV[2i].z;
  u_xlat6.z = x_214;
  let x_216 : vec3<f32> = u_xlat15;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(x_216, vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_220 : vec3<f32> = u_xlat1;
  let x_223 : vec4<f32> = x_52.unity_ShadowFadeCenterAndType;
  let x_226 : vec3<f32> = (x_220 + -(vec3<f32>(x_223.x, x_223.y, x_223.z)));
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_230 : vec4<f32> = u_xlat6;
  let x_232 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : f32 = u_xlat48;
  u_xlat48 = sqrt(x_235);
  let x_237 : f32 = u_xlat47;
  let x_239 : f32 = u_xlat48;
  u_xlat48 = (-(x_237) + x_239);
  let x_242 : f32 = x_52.unity_ShadowFadeCenterAndType.w;
  let x_243 : f32 = u_xlat48;
  let x_245 : f32 = u_xlat47;
  u_xlat47 = ((x_242 * x_243) + x_245);
  let x_247 : f32 = u_xlat47;
  let x_250 : f32 = x_52.x_LightShadowData.z;
  let x_253 : f32 = x_52.x_LightShadowData.w;
  u_xlat47 = ((x_247 * x_250) + x_253);
  let x_255 : f32 = u_xlat47;
  u_xlat47 = clamp(x_255, 0.0f, 1.0f);
  let x_257 : i32 = u_xlati0;
  u_xlati0 = (x_257 * 7i);
  let x_263 : f32 = x_52.unity_ProbeVolumeParams.x;
  u_xlatb48 = (x_263 == 1.0f);
  let x_265 : bool = u_xlatb48;
  if (x_265) {
    let x_270 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb49 = (x_270 == 1.0f);
    let x_272 : vec4<f32> = vs_TEXCOORD2;
    let x_276 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_278 : vec3<f32> = (vec3<f32>(x_272.w, x_272.w, x_272.w) * vec3<f32>(x_276.x, x_276.y, x_276.z));
    let x_279 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
    let x_282 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_284 : vec4<f32> = vs_TEXCOORD1;
    let x_287 : vec4<f32> = u_xlat6;
    let x_289 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.y, x_282.z) * vec3<f32>(x_284.w, x_284.w, x_284.w)) + vec3<f32>(x_287.x, x_287.y, x_287.z));
    let x_290 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_293 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_295 : vec4<f32> = vs_TEXCOORD3;
    let x_298 : vec4<f32> = u_xlat6;
    let x_300 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_295.w, x_295.w, x_295.w)) + vec3<f32>(x_298.x, x_298.y, x_298.z));
    let x_301 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
    let x_303 : vec4<f32> = u_xlat6;
    let x_307 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_309 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + vec3<f32>(x_307.x, x_307.y, x_307.z));
    let x_310 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
    let x_312 : bool = u_xlatb49;
    if (x_312) {
      let x_316 : vec4<f32> = u_xlat6;
      x_313 = vec3<f32>(x_316.x, x_316.y, x_316.z);
    } else {
      let x_319 : vec3<f32> = u_xlat1;
      x_313 = x_319;
    }
    let x_320 : vec3<f32> = x_313;
    let x_321 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
    let x_323 : vec4<f32> = u_xlat6;
    let x_327 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_329 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) + -(x_327));
    let x_330 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_332 : vec4<f32> = u_xlat6;
    let x_336 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_337 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * x_336);
    let x_338 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_338.x, x_337.x, x_337.y, x_337.z);
    let x_342 : f32 = u_xlat6.y;
    u_xlat49 = ((x_342 * 0.25f) + 0.75f);
    let x_349 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat50 = ((x_349 * 0.5f) + 0.75f);
    let x_353 : f32 = u_xlat49;
    let x_354 : f32 = u_xlat50;
    u_xlat6.x = max(x_353, x_354);
    let x_365 : vec4<f32> = u_xlat6;
    let x_367 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_365.x, x_365.z, x_365.w));
    u_xlat6 = x_367;
  } else {
    let x_375 : i32 = u_xlati0;
    let x_378 : vec4<f32> = x_374.unity_Builtins2Array[(x_375 / 7i)].unity_SHCArray;
    u_xlat6 = vec4<f32>(x_378.w, x_378.w, x_378.w, x_378.w);
  }
  let x_380 : vec4<f32> = u_xlat6;
  let x_382 : vec4<f32> = x_52.unity_OcclusionMaskSelector;
  u_xlat49 = dot(x_380, x_382);
  let x_384 : f32 = u_xlat49;
  u_xlat49 = clamp(x_384, 0.0f, 1.0f);
  let x_387 : vec4<f32> = vs_TEXCOORD7;
  let x_389 : vec4<f32> = vs_TEXCOORD7;
  let x_391 : vec2<f32> = (vec2<f32>(x_387.x, x_387.y) / vec2<f32>(x_389.w, x_389.w));
  let x_392 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_399 : vec4<f32> = u_xlat6;
  let x_401 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_399.x, x_399.y));
  u_xlat50 = x_401.x;
  let x_403 : f32 = u_xlat49;
  let x_404 : f32 = u_xlat50;
  u_xlat49 = (x_403 + -(x_404));
  let x_407 : f32 = u_xlat47;
  let x_408 : f32 = u_xlat49;
  let x_410 : f32 = u_xlat50;
  u_xlat47 = ((x_407 * x_408) + x_410);
  let x_412 : vec4<f32> = vs_TEXCOORD1;
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_418 : vec4<f32> = vs_TEXCOORD2;
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_424 : vec4<f32> = vs_TEXCOORD3;
  let x_426 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_424.x, x_424.y, x_424.z), vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_430 : vec4<f32> = u_xlat6;
  let x_432 : vec4<f32> = u_xlat6;
  u_xlat49 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat49;
  u_xlat49 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat49;
  let x_439 : vec4<f32> = u_xlat6;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_52.x_Glossiness;
  u_xlat49 = (-(x_446) + 1.0f);
  let x_449 : vec4<f32> = u_xlat2;
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(-(vec3<f32>(x_449.x, x_449.y, x_449.z)), vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_457 : f32 = u_xlat6.x;
  let x_459 : f32 = u_xlat6.x;
  u_xlat6.x = (x_457 + x_459);
  let x_462 : vec4<f32> = u_xlat5;
  let x_464 : vec4<f32> = u_xlat6;
  let x_468 : vec4<f32> = u_xlat2;
  let x_471 : vec3<f32> = ((vec3<f32>(x_462.x, x_462.y, x_462.z) * -(vec3<f32>(x_464.x, x_464.x, x_464.x))) + -(vec3<f32>(x_468.x, x_468.y, x_468.z)));
  let x_472 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
  let x_475 : f32 = u_xlat47;
  let x_479 : vec4<f32> = x_52.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_475, x_475, x_475) * vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : bool = u_xlatb48;
  if (x_482) {
    let x_486 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb47 = (x_486 == 1.0f);
    let x_489 : vec4<f32> = vs_TEXCOORD2;
    let x_492 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_494 : vec3<f32> = (vec3<f32>(x_489.w, x_489.w, x_489.w) * vec3<f32>(x_492.x, x_492.y, x_492.z));
    let x_495 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
    let x_498 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_500 : vec4<f32> = vs_TEXCOORD1;
    let x_503 : vec4<f32> = u_xlat8;
    let x_505 : vec3<f32> = ((vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_500.w, x_500.w, x_500.w)) + vec3<f32>(x_503.x, x_503.y, x_503.z));
    let x_506 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
    let x_509 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_511 : vec4<f32> = vs_TEXCOORD3;
    let x_514 : vec4<f32> = u_xlat8;
    let x_516 : vec3<f32> = ((vec3<f32>(x_509.x, x_509.y, x_509.z) * vec3<f32>(x_511.w, x_511.w, x_511.w)) + vec3<f32>(x_514.x, x_514.y, x_514.z));
    let x_517 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
    let x_519 : vec4<f32> = u_xlat8;
    let x_522 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_524 : vec3<f32> = (vec3<f32>(x_519.x, x_519.y, x_519.z) + vec3<f32>(x_522.x, x_522.y, x_522.z));
    let x_525 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_524.x, x_524.y, x_524.z, x_525.w);
    let x_527 : bool = u_xlatb47;
    if (x_527) {
      let x_531 : vec4<f32> = u_xlat8;
      x_528 = vec3<f32>(x_531.x, x_531.y, x_531.z);
    } else {
      let x_534 : vec3<f32> = u_xlat1;
      x_528 = x_534;
    }
    let x_535 : vec3<f32> = x_528;
    let x_536 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
    let x_538 : vec4<f32> = u_xlat8;
    let x_541 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_543 : vec3<f32> = (vec3<f32>(x_538.x, x_538.y, x_538.z) + -(x_541));
    let x_544 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
    let x_546 : vec4<f32> = u_xlat8;
    let x_549 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_550 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) * x_549);
    let x_551 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_551.x, x_550.x, x_550.y, x_550.z);
    let x_554 : f32 = u_xlat8.y;
    u_xlat47 = (x_554 * 0.25f);
    let x_557 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat48 = (x_557 * 0.5f);
    let x_561 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat51 = ((-(x_561) * 0.5f) + 0.25f);
    let x_565 : f32 = u_xlat47;
    let x_566 : f32 = u_xlat48;
    u_xlat47 = max(x_565, x_566);
    let x_568 : f32 = u_xlat51;
    let x_569 : f32 = u_xlat47;
    u_xlat8.x = min(x_568, x_569);
    let x_576 : vec4<f32> = u_xlat8;
    let x_578 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_576.x, x_576.z, x_576.w));
    u_xlat9 = x_578;
    let x_580 : vec4<f32> = u_xlat8;
    let x_583 : vec3<f32> = (vec3<f32>(x_580.x, x_580.z, x_580.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_584 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    let x_589 : vec4<f32> = u_xlat10;
    let x_591 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_589.x, x_589.y, x_589.z));
    u_xlat10 = x_591;
    let x_592 : vec4<f32> = u_xlat8;
    let x_595 : vec3<f32> = (vec3<f32>(x_592.x, x_592.z, x_592.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_596 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_601 : vec4<f32> = u_xlat8;
    let x_603 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_601.x, x_601.y, x_601.z));
    u_xlat8 = x_603;
    u_xlat5.w = 1.0f;
    let x_605 : vec4<f32> = u_xlat9;
    let x_606 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_605, x_606);
    let x_609 : vec4<f32> = u_xlat10;
    let x_610 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_609, x_610);
    let x_613 : vec4<f32> = u_xlat8;
    let x_614 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_613, x_614);
  } else {
    u_xlat5.w = 1.0f;
    let x_619 : i32 = u_xlati0;
    let x_622 : vec4<f32> = x_374.unity_Builtins2Array[(x_619 / 7i)].unity_SHArArray;
    let x_623 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_622, x_623);
    let x_626 : i32 = u_xlati0;
    let x_629 : vec4<f32> = x_374.unity_Builtins2Array[(x_626 / 7i)].unity_SHAgArray;
    let x_630 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_629, x_630);
    let x_633 : i32 = u_xlati0;
    let x_636 : vec4<f32> = x_374.unity_Builtins2Array[(x_633 / 7i)].unity_SHAbArray;
    let x_637 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_636, x_637);
  }
  let x_640 : vec4<f32> = u_xlat9;
  let x_644 : vec3<f32> = vs_TEXCOORD5;
  let x_645 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) + x_644);
  let x_646 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : vec4<f32> = u_xlat8;
  let x_651 : vec3<f32> = max(vec3<f32>(x_648.x, x_648.y, x_648.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_652 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_657 : f32 = x_52.unity_SpecCube0_ProbePosition.w;
  u_xlatb0 = (0.0f < x_657);
  let x_659 : bool = u_xlatb0;
  if (x_659) {
    let x_663 : vec4<f32> = u_xlat6;
    let x_665 : vec4<f32> = u_xlat6;
    u_xlat0.x = dot(vec3<f32>(x_663.x, x_663.y, x_663.z), vec3<f32>(x_665.x, x_665.y, x_665.z));
    let x_670 : f32 = u_xlat0.x;
    u_xlat0.x = inverseSqrt(x_670);
    let x_673 : vec3<f32> = u_xlat0;
    let x_675 : vec4<f32> = u_xlat6;
    let x_677 : vec3<f32> = (vec3<f32>(x_673.x, x_673.x, x_673.x) * vec3<f32>(x_675.x, x_675.y, x_675.z));
    let x_678 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
    let x_680 : vec3<f32> = u_xlat1;
    let x_683 : vec4<f32> = x_52.unity_SpecCube0_BoxMax;
    let x_685 : vec3<f32> = (-(x_680) + vec3<f32>(x_683.x, x_683.y, x_683.z));
    let x_686 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
    let x_688 : vec4<f32> = u_xlat10;
    let x_690 : vec4<f32> = u_xlat9;
    let x_692 : vec3<f32> = (vec3<f32>(x_688.x, x_688.y, x_688.z) / vec3<f32>(x_690.x, x_690.y, x_690.z));
    let x_693 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
    let x_696 : vec3<f32> = u_xlat1;
    let x_700 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_696) + vec3<f32>(x_700.x, x_700.y, x_700.z));
    let x_703 : vec3<f32> = u_xlat11;
    let x_704 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_703 / vec3<f32>(x_704.x, x_704.y, x_704.z));
    let x_711 : vec4<f32> = u_xlat9;
    let x_714 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_711.x, x_711.y, x_711.z, x_711.x));
    u_xlatb12 = vec3<bool>(x_714.x, x_714.y, x_714.z);
    let x_717 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_717;
    let x_719 : bool = u_xlatb12.x;
    if (x_719) {
      let x_724 : f32 = u_xlat10.x;
      x_720 = x_724;
    } else {
      let x_727 : f32 = u_xlat11.x;
      x_720 = x_727;
    }
    let x_728 : f32 = x_720;
    hlslcc_movcTemp.x = x_728;
    let x_731 : bool = u_xlatb12.y;
    if (x_731) {
      let x_736 : f32 = u_xlat10.y;
      x_732 = x_736;
    } else {
      let x_739 : f32 = u_xlat11.y;
      x_732 = x_739;
    }
    let x_740 : f32 = x_732;
    hlslcc_movcTemp.y = x_740;
    let x_743 : bool = u_xlatb12.z;
    if (x_743) {
      let x_748 : f32 = u_xlat10.z;
      x_744 = x_748;
    } else {
      let x_751 : f32 = u_xlat11.z;
      x_744 = x_751;
    }
    let x_752 : f32 = x_744;
    hlslcc_movcTemp.z = x_752;
    let x_754 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_754;
    let x_756 : f32 = u_xlat10.y;
    let x_758 : f32 = u_xlat10.x;
    u_xlat0.x = min(x_756, x_758);
    let x_762 : f32 = u_xlat10.z;
    let x_764 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_762, x_764);
    let x_767 : vec3<f32> = u_xlat1;
    let x_769 : vec4<f32> = x_52.unity_SpecCube0_ProbePosition;
    let x_772 : vec3<f32> = (x_767 + -(vec3<f32>(x_769.x, x_769.y, x_769.z)));
    let x_773 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_772.x, x_772.y, x_772.z, x_773.w);
    let x_775 : vec4<f32> = u_xlat9;
    let x_777 : vec3<f32> = u_xlat0;
    let x_780 : vec4<f32> = u_xlat10;
    let x_782 : vec3<f32> = ((vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_777.x, x_777.x, x_777.x)) + vec3<f32>(x_780.x, x_780.y, x_780.z));
    let x_783 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  } else {
    let x_786 : vec4<f32> = u_xlat6;
    let x_787 : vec3<f32> = vec3<f32>(x_786.x, x_786.y, x_786.z);
    let x_788 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  }
  let x_790 : f32 = u_xlat49;
  u_xlat0.x = ((-(x_790) * 0.699999988f) + 1.700000048f);
  let x_798 : f32 = u_xlat0.x;
  let x_799 : f32 = u_xlat49;
  u_xlat0.x = (x_798 * x_799);
  let x_803 : f32 = u_xlat0.x;
  u_xlat0.x = (x_803 * 6.0f);
  let x_815 : vec4<f32> = u_xlat9;
  let x_818 : f32 = u_xlat0.x;
  let x_819 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_815.x, x_815.y, x_815.z), x_818);
  u_xlat9 = x_819;
  let x_821 : f32 = u_xlat9.w;
  u_xlat47 = (x_821 + -1.0f);
  let x_825 : f32 = x_52.unity_SpecCube0_HDR.w;
  let x_826 : f32 = u_xlat47;
  u_xlat47 = ((x_825 * x_826) + 1.0f);
  let x_829 : f32 = u_xlat47;
  u_xlat47 = log2(x_829);
  let x_831 : f32 = u_xlat47;
  let x_833 : f32 = x_52.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_831 * x_833);
  let x_835 : f32 = u_xlat47;
  u_xlat47 = exp2(x_835);
  let x_837 : f32 = u_xlat47;
  let x_839 : f32 = x_52.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_837 * x_839);
  let x_841 : vec4<f32> = u_xlat9;
  let x_843 : f32 = u_xlat47;
  let x_845 : vec3<f32> = (vec3<f32>(x_841.x, x_841.y, x_841.z) * vec3<f32>(x_843, x_843, x_843));
  let x_846 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_849 : f32 = x_52.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_849 < 0.999989986f);
  let x_852 : bool = u_xlatb48;
  if (x_852) {
    let x_857 : f32 = x_52.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_857);
    let x_859 : bool = u_xlatb48;
    if (x_859) {
      let x_862 : vec4<f32> = u_xlat6;
      let x_864 : vec4<f32> = u_xlat6;
      u_xlat48 = dot(vec3<f32>(x_862.x, x_862.y, x_862.z), vec3<f32>(x_864.x, x_864.y, x_864.z));
      let x_867 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_867);
      let x_869 : f32 = u_xlat48;
      let x_871 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_869, x_869, x_869) * vec3<f32>(x_871.x, x_871.y, x_871.z));
      let x_875 : vec3<f32> = u_xlat1;
      let x_879 : vec4<f32> = x_52.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_875) + vec3<f32>(x_879.x, x_879.y, x_879.z));
      let x_882 : vec3<f32> = u_xlat12;
      let x_883 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_882 / x_883);
      let x_886 : vec3<f32> = u_xlat1;
      let x_890 : vec4<f32> = x_52.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_886) + vec3<f32>(x_890.x, x_890.y, x_890.z));
      let x_893 : vec3<f32> = u_xlat13;
      let x_894 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_893 / x_894);
      let x_897 : vec3<f32> = u_xlat11;
      let x_899 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_897.x, x_897.y, x_897.z, x_897.x));
      u_xlatb14 = vec3<bool>(x_899.x, x_899.y, x_899.z);
      let x_902 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_902;
      let x_904 : bool = u_xlatb14.x;
      if (x_904) {
        let x_909 : f32 = u_xlat12.x;
        x_905 = x_909;
      } else {
        let x_912 : f32 = u_xlat13.x;
        x_905 = x_912;
      }
      let x_913 : f32 = x_905;
      hlslcc_movcTemp_1.x = x_913;
      let x_916 : bool = u_xlatb14.y;
      if (x_916) {
        let x_921 : f32 = u_xlat12.y;
        x_917 = x_921;
      } else {
        let x_924 : f32 = u_xlat13.y;
        x_917 = x_924;
      }
      let x_925 : f32 = x_917;
      hlslcc_movcTemp_1.y = x_925;
      let x_928 : bool = u_xlatb14.z;
      if (x_928) {
        let x_933 : f32 = u_xlat12.z;
        x_929 = x_933;
      } else {
        let x_936 : f32 = u_xlat13.z;
        x_929 = x_936;
      }
      let x_937 : f32 = x_929;
      hlslcc_movcTemp_1.z = x_937;
      let x_939 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_939;
      let x_941 : f32 = u_xlat12.y;
      let x_943 : f32 = u_xlat12.x;
      u_xlat48 = min(x_941, x_943);
      let x_946 : f32 = u_xlat12.z;
      let x_947 : f32 = u_xlat48;
      u_xlat48 = min(x_946, x_947);
      let x_949 : vec3<f32> = u_xlat1;
      let x_951 : vec4<f32> = x_52.unity_SpecCube1_ProbePosition;
      u_xlat1 = (x_949 + -(vec3<f32>(x_951.x, x_951.y, x_951.z)));
      let x_955 : vec3<f32> = u_xlat11;
      let x_956 : f32 = u_xlat48;
      let x_959 : vec3<f32> = u_xlat1;
      let x_960 : vec3<f32> = ((x_955 * vec3<f32>(x_956, x_956, x_956)) + x_959);
      let x_961 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
    }
    let x_967 : vec4<f32> = u_xlat6;
    let x_970 : f32 = u_xlat0.x;
    let x_971 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_967.x, x_967.y, x_967.z), x_970);
    u_xlat6 = x_971;
    let x_973 : f32 = u_xlat6.w;
    u_xlat0.x = (x_973 + -1.0f);
    let x_978 : f32 = x_52.unity_SpecCube1_HDR.w;
    let x_980 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_978 * x_980) + 1.0f);
    let x_985 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_985);
    let x_989 : f32 = u_xlat0.x;
    let x_991 : f32 = x_52.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_989 * x_991);
    let x_995 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_995);
    let x_999 : f32 = u_xlat0.x;
    let x_1001 : f32 = x_52.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_999 * x_1001);
    let x_1004 : vec4<f32> = u_xlat6;
    let x_1006 : vec3<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_1004.x, x_1004.y, x_1004.z) * vec3<f32>(x_1006.x, x_1006.x, x_1006.x));
    let x_1009 : f32 = u_xlat47;
    let x_1011 : vec4<f32> = u_xlat9;
    let x_1014 : vec3<f32> = u_xlat1;
    let x_1016 : vec3<f32> = ((vec3<f32>(x_1009, x_1009, x_1009) * vec3<f32>(x_1011.x, x_1011.y, x_1011.z)) + -(x_1014));
    let x_1017 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
    let x_1020 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    let x_1022 : vec4<f32> = u_xlat6;
    let x_1025 : vec3<f32> = u_xlat1;
    let x_1026 : vec3<f32> = ((vec3<f32>(x_1020.w, x_1020.w, x_1020.w) * vec3<f32>(x_1022.x, x_1022.y, x_1022.z)) + x_1025);
    let x_1027 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  }
  let x_1029 : vec4<f32> = u_xlat3;
  let x_1031 : vec4<f32> = vs_COLOR0;
  u_xlat1 = ((vec3<f32>(x_1029.x, x_1029.y, x_1029.z) * vec3<f32>(x_1031.x, x_1031.y, x_1031.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1039 : f32 = x_52.x_Metallic;
  let x_1041 : f32 = x_52.x_Metallic;
  let x_1043 : f32 = x_52.x_Metallic;
  let x_1044 : vec3<f32> = vec3<f32>(x_1039, x_1041, x_1043);
  let x_1049 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1044.x, x_1044.y, x_1044.z) * x_1049) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1055 : f32 = x_52.x_Metallic;
  u_xlat0.x = ((-(x_1055) * 0.959999979f) + 0.959999979f);
  let x_1061 : vec3<f32> = u_xlat0;
  let x_1063 : vec3<f32> = u_xlat4;
  let x_1064 : vec3<f32> = (vec3<f32>(x_1061.x, x_1061.x, x_1061.x) * x_1063);
  let x_1065 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1067 : vec3<f32> = u_xlat15;
  let x_1068 : f32 = u_xlat46;
  let x_1072 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat15 = ((x_1067 * vec3<f32>(x_1068, x_1068, x_1068)) + vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec3<f32> = u_xlat15;
  let x_1076 : vec3<f32> = u_xlat15;
  u_xlat46 = dot(x_1075, x_1076);
  let x_1078 : f32 = u_xlat46;
  u_xlat46 = max(x_1078, 0.001f);
  let x_1081 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_1081);
  let x_1083 : vec3<f32> = u_xlat15;
  let x_1084 : f32 = u_xlat46;
  u_xlat15 = (x_1083 * vec3<f32>(x_1084, x_1084, x_1084));
  let x_1087 : vec4<f32> = u_xlat5;
  let x_1089 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(vec3<f32>(x_1087.x, x_1087.y, x_1087.z), vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1092 : vec4<f32> = u_xlat5;
  let x_1095 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1092.x, x_1092.y, x_1092.z), vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
  let x_1100 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1100, 0.0f, 1.0f);
  let x_1104 : vec4<f32> = u_xlat5;
  let x_1106 : vec3<f32> = u_xlat15;
  u_xlat17 = dot(vec3<f32>(x_1104.x, x_1104.y, x_1104.z), x_1106);
  let x_1108 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1108, 0.0f, 1.0f);
  let x_1111 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  let x_1113 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(vec3<f32>(x_1111.x, x_1111.y, x_1111.z), x_1113);
  let x_1117 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_1117, 0.0f, 1.0f);
  let x_1122 : f32 = u_xlat15.x;
  let x_1124 : f32 = u_xlat15.x;
  u_xlat30 = (x_1122 * x_1124);
  let x_1126 : f32 = u_xlat30;
  let x_1128 : f32 = u_xlat49;
  u_xlat30 = dot(vec2<f32>(x_1126, x_1126), vec2<f32>(x_1128, x_1128));
  let x_1131 : f32 = u_xlat30;
  u_xlat30 = (x_1131 + -0.5f);
  let x_1136 : f32 = u_xlat2.x;
  u_xlat45 = (-(x_1136) + 1.0f);
  let x_1140 : f32 = u_xlat45;
  let x_1141 : f32 = u_xlat45;
  u_xlat32 = (x_1140 * x_1141);
  let x_1143 : f32 = u_xlat32;
  let x_1144 : f32 = u_xlat32;
  u_xlat32 = (x_1143 * x_1144);
  let x_1146 : f32 = u_xlat45;
  let x_1147 : f32 = u_xlat32;
  u_xlat45 = (x_1146 * x_1147);
  let x_1149 : f32 = u_xlat30;
  let x_1150 : f32 = u_xlat45;
  u_xlat45 = ((x_1149 * x_1150) + 1.0f);
  let x_1153 : f32 = u_xlat46;
  u_xlat32 = (-(abs(x_1153)) + 1.0f);
  let x_1157 : f32 = u_xlat32;
  let x_1158 : f32 = u_xlat32;
  u_xlat47 = (x_1157 * x_1158);
  let x_1160 : f32 = u_xlat47;
  let x_1161 : f32 = u_xlat47;
  u_xlat47 = (x_1160 * x_1161);
  let x_1163 : f32 = u_xlat32;
  let x_1164 : f32 = u_xlat47;
  u_xlat32 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat30;
  let x_1167 : f32 = u_xlat32;
  u_xlat30 = ((x_1166 * x_1167) + 1.0f);
  let x_1170 : f32 = u_xlat30;
  let x_1171 : f32 = u_xlat45;
  u_xlat30 = (x_1170 * x_1171);
  let x_1174 : f32 = u_xlat2.x;
  let x_1175 : f32 = u_xlat30;
  u_xlat30 = (x_1174 * x_1175);
  let x_1177 : f32 = u_xlat49;
  let x_1178 : f32 = u_xlat49;
  u_xlat45 = (x_1177 * x_1178);
  let x_1180 : f32 = u_xlat45;
  u_xlat45 = max(x_1180, 0.002f);
  let x_1183 : f32 = u_xlat45;
  u_xlat47 = (-(x_1183) + 1.0f);
  let x_1186 : f32 = u_xlat46;
  let x_1188 : f32 = u_xlat47;
  let x_1190 : f32 = u_xlat45;
  u_xlat48 = ((abs(x_1186) * x_1188) + x_1190);
  let x_1193 : f32 = u_xlat2.x;
  let x_1194 : f32 = u_xlat47;
  let x_1196 : f32 = u_xlat45;
  u_xlat47 = ((x_1193 * x_1194) + x_1196);
  let x_1198 : f32 = u_xlat46;
  let x_1200 : f32 = u_xlat47;
  u_xlat46 = (abs(x_1198) * x_1200);
  let x_1203 : f32 = u_xlat2.x;
  let x_1204 : f32 = u_xlat48;
  let x_1206 : f32 = u_xlat46;
  u_xlat46 = ((x_1203 * x_1204) + x_1206);
  let x_1208 : f32 = u_xlat46;
  u_xlat46 = (x_1208 + 0.00001f);
  let x_1211 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1211);
  let x_1213 : f32 = u_xlat45;
  let x_1214 : f32 = u_xlat45;
  u_xlat47 = (x_1213 * x_1214);
  let x_1216 : f32 = u_xlat17;
  let x_1217 : f32 = u_xlat47;
  let x_1219 : f32 = u_xlat17;
  u_xlat48 = ((x_1216 * x_1217) + -(x_1219));
  let x_1222 : f32 = u_xlat48;
  let x_1223 : f32 = u_xlat17;
  u_xlat17 = ((x_1222 * x_1223) + 1.0f);
  let x_1226 : f32 = u_xlat47;
  u_xlat47 = (x_1226 * 0.318309873f);
  let x_1229 : f32 = u_xlat17;
  let x_1230 : f32 = u_xlat17;
  u_xlat17 = ((x_1229 * x_1230) + 0.0000001f);
  let x_1234 : f32 = u_xlat47;
  let x_1235 : f32 = u_xlat17;
  u_xlat17 = (x_1234 / x_1235);
  let x_1237 : f32 = u_xlat46;
  let x_1238 : f32 = u_xlat17;
  u_xlat46 = (x_1237 * x_1238);
  let x_1241 : f32 = u_xlat2.x;
  let x_1242 : f32 = u_xlat46;
  u_xlat46 = (x_1241 * x_1242);
  let x_1244 : f32 = u_xlat46;
  u_xlat46 = (x_1244 * 3.141592741f);
  let x_1247 : f32 = u_xlat46;
  u_xlat46 = max(x_1247, 0.0f);
  let x_1249 : f32 = u_xlat45;
  let x_1250 : f32 = u_xlat45;
  u_xlat45 = ((x_1249 * x_1250) + 1.0f);
  let x_1253 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1253);
  let x_1255 : vec3<f32> = u_xlat1;
  let x_1256 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_1255, x_1256);
  let x_1261 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1261 == 0.0f));
  let x_1263 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1263);
  let x_1266 : f32 = u_xlat46;
  let x_1268 : f32 = u_xlat2.x;
  u_xlat46 = (x_1266 * x_1268);
  let x_1271 : f32 = u_xlat0.x;
  let x_1274 : f32 = x_52.x_Glossiness;
  u_xlat0.x = (-(x_1271) + x_1274);
  let x_1278 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1278 + 1.0f);
  let x_1282 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1282, 0.0f, 1.0f);
  let x_1285 : vec3<f32> = u_xlat7;
  let x_1286 : f32 = u_xlat30;
  let x_1289 : vec4<f32> = u_xlat8;
  let x_1291 : vec3<f32> = ((x_1285 * vec3<f32>(x_1286, x_1286, x_1286)) + vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
  let x_1292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1291.z);
  let x_1294 : vec3<f32> = u_xlat7;
  let x_1295 : f32 = u_xlat46;
  u_xlat4 = (x_1294 * vec3<f32>(x_1295, x_1295, x_1295));
  let x_1299 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_1299) + 1.0f);
  let x_1304 : f32 = u_xlat15.x;
  let x_1306 : f32 = u_xlat15.x;
  u_xlat30 = (x_1304 * x_1306);
  let x_1308 : f32 = u_xlat30;
  let x_1309 : f32 = u_xlat30;
  u_xlat30 = (x_1308 * x_1309);
  let x_1312 : f32 = u_xlat15.x;
  let x_1313 : f32 = u_xlat30;
  u_xlat15.x = (x_1312 * x_1313);
  let x_1316 : vec3<f32> = u_xlat1;
  let x_1319 : vec3<f32> = (-(x_1316) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1320 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
  let x_1322 : vec4<f32> = u_xlat5;
  let x_1324 : vec3<f32> = u_xlat15;
  let x_1327 : vec3<f32> = u_xlat1;
  let x_1328 : vec3<f32> = ((vec3<f32>(x_1322.x, x_1322.y, x_1322.z) * vec3<f32>(x_1324.x, x_1324.x, x_1324.x)) + x_1327);
  let x_1329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1331 : vec3<f32> = u_xlat4;
  let x_1332 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1331 * vec3<f32>(x_1332.x, x_1332.y, x_1332.z));
  let x_1335 : vec4<f32> = u_xlat3;
  let x_1337 : vec4<f32> = u_xlat2;
  let x_1340 : vec3<f32> = u_xlat4;
  let x_1341 : vec3<f32> = ((vec3<f32>(x_1335.x, x_1335.y, x_1335.z) * vec3<f32>(x_1337.x, x_1337.y, x_1337.w)) + x_1340);
  let x_1342 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1341.x, x_1341.y, x_1342.z, x_1341.z);
  let x_1344 : vec4<f32> = u_xlat10;
  let x_1346 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1344.x, x_1344.y, x_1344.z) * vec3<f32>(x_1346, x_1346, x_1346));
  let x_1349 : vec3<f32> = u_xlat1;
  let x_1351 : vec3<f32> = u_xlat0;
  let x_1353 : vec3<f32> = (-(x_1349) + vec3<f32>(x_1351.x, x_1351.x, x_1351.x));
  let x_1354 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1353.x, x_1353.y, x_1353.z, x_1354.w);
  let x_1356 : f32 = u_xlat32;
  let x_1358 : vec4<f32> = u_xlat3;
  let x_1361 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1356, x_1356, x_1356) * vec3<f32>(x_1358.x, x_1358.y, x_1358.z)) + x_1361);
  let x_1363 : vec3<f32> = u_xlat15;
  let x_1364 : vec3<f32> = u_xlat1;
  let x_1366 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1363 * x_1364) + vec3<f32>(x_1366.x, x_1366.y, x_1366.w));
  let x_1371 : vec3<f32> = u_xlat0;
  let x_1374 : vec4<f32> = x_52.x_AmbientColor;
  let x_1376 : vec3<f32> = (x_1371 + vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
  let x_1377 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(7) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

