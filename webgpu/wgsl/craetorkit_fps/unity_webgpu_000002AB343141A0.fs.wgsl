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
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(1) @binding(2) var<uniform> x_373 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

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
  var u_xlat6 : vec4<f32>;
  var u_xlat48 : f32;
  var u_xlatb48 : bool;
  var u_xlatb49 : bool;
  var x_312 : vec3<f32>;
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
  var x_721 : f32;
  var x_733 : f32;
  var x_745 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_906 : f32;
  var x_918 : f32;
  var x_930 : f32;
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
  let x_262 : f32 = x_52.unity_ProbeVolumeParams.x;
  u_xlatb48 = (x_262 == 1.0f);
  let x_264 : bool = u_xlatb48;
  if (x_264) {
    let x_269 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb49 = (x_269 == 1.0f);
    let x_271 : vec4<f32> = vs_TEXCOORD2;
    let x_275 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_277 : vec3<f32> = (vec3<f32>(x_271.w, x_271.w, x_271.w) * vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_281 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_283 : vec4<f32> = vs_TEXCOORD1;
    let x_286 : vec4<f32> = u_xlat6;
    let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.w, x_283.w, x_283.w)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_292 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_294 : vec4<f32> = vs_TEXCOORD3;
    let x_297 : vec4<f32> = u_xlat6;
    let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.w, x_294.w, x_294.w)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
    let x_300 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat6;
    let x_306 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_308 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_306.x, x_306.y, x_306.z));
    let x_309 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_311 : bool = u_xlatb49;
    if (x_311) {
      let x_315 : vec4<f32> = u_xlat6;
      x_312 = vec3<f32>(x_315.x, x_315.y, x_315.z);
    } else {
      let x_318 : vec3<f32> = u_xlat1;
      x_312 = x_318;
    }
    let x_319 : vec3<f32> = x_312;
    let x_320 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat6;
    let x_326 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_328 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) + -(x_326));
    let x_329 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : vec4<f32> = u_xlat6;
    let x_335 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_336 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * x_335);
    let x_337 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_337.x, x_336.x, x_336.y, x_336.z);
    let x_341 : f32 = u_xlat6.y;
    u_xlat49 = ((x_341 * 0.25f) + 0.75f);
    let x_348 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat50 = ((x_348 * 0.5f) + 0.75f);
    let x_352 : f32 = u_xlat49;
    let x_353 : f32 = u_xlat50;
    u_xlat6.x = max(x_352, x_353);
    let x_364 : vec4<f32> = u_xlat6;
    let x_366 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_364.x, x_364.z, x_364.w));
    u_xlat6 = x_366;
  } else {
    let x_374 : i32 = u_xlati0;
    let x_377 : vec4<f32> = x_373.unity_Builtins2Array[(x_374 / 7i)].unity_SHCArray;
    u_xlat6 = vec4<f32>(x_377.w, x_377.w, x_377.w, x_377.w);
  }
  let x_379 : vec4<f32> = u_xlat6;
  let x_382 : vec4<f32> = x_52.unity_OcclusionMaskSelector;
  u_xlat49 = dot(x_379, x_382);
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
    let x_622 : vec4<f32> = x_373.unity_Builtins2Array[(x_619 / 7i)].unity_SHArArray;
    let x_623 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_622, x_623);
    let x_626 : i32 = u_xlati0;
    let x_629 : vec4<f32> = x_373.unity_Builtins2Array[(x_626 / 7i)].unity_SHAgArray;
    let x_630 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_629, x_630);
    let x_633 : i32 = u_xlati0;
    let x_636 : vec4<f32> = x_373.unity_Builtins2Array[(x_633 / 7i)].unity_SHAbArray;
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
    let x_684 : vec4<f32> = x_52.unity_SpecCube0_BoxMax;
    let x_686 : vec3<f32> = (-(x_680) + vec3<f32>(x_684.x, x_684.y, x_684.z));
    let x_687 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
    let x_689 : vec4<f32> = u_xlat10;
    let x_691 : vec4<f32> = u_xlat9;
    let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) / vec3<f32>(x_691.x, x_691.y, x_691.z));
    let x_694 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    let x_697 : vec3<f32> = u_xlat1;
    let x_701 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_697) + vec3<f32>(x_701.x, x_701.y, x_701.z));
    let x_704 : vec3<f32> = u_xlat11;
    let x_705 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_704 / vec3<f32>(x_705.x, x_705.y, x_705.z));
    let x_712 : vec4<f32> = u_xlat9;
    let x_715 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_712.x, x_712.y, x_712.z, x_712.x));
    u_xlatb12 = vec3<bool>(x_715.x, x_715.y, x_715.z);
    let x_718 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_718;
    let x_720 : bool = u_xlatb12.x;
    if (x_720) {
      let x_725 : f32 = u_xlat10.x;
      x_721 = x_725;
    } else {
      let x_728 : f32 = u_xlat11.x;
      x_721 = x_728;
    }
    let x_729 : f32 = x_721;
    hlslcc_movcTemp.x = x_729;
    let x_732 : bool = u_xlatb12.y;
    if (x_732) {
      let x_737 : f32 = u_xlat10.y;
      x_733 = x_737;
    } else {
      let x_740 : f32 = u_xlat11.y;
      x_733 = x_740;
    }
    let x_741 : f32 = x_733;
    hlslcc_movcTemp.y = x_741;
    let x_744 : bool = u_xlatb12.z;
    if (x_744) {
      let x_749 : f32 = u_xlat10.z;
      x_745 = x_749;
    } else {
      let x_752 : f32 = u_xlat11.z;
      x_745 = x_752;
    }
    let x_753 : f32 = x_745;
    hlslcc_movcTemp.z = x_753;
    let x_755 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_755;
    let x_757 : f32 = u_xlat10.y;
    let x_759 : f32 = u_xlat10.x;
    u_xlat0.x = min(x_757, x_759);
    let x_763 : f32 = u_xlat10.z;
    let x_765 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_763, x_765);
    let x_768 : vec3<f32> = u_xlat1;
    let x_770 : vec4<f32> = x_52.unity_SpecCube0_ProbePosition;
    let x_773 : vec3<f32> = (x_768 + -(vec3<f32>(x_770.x, x_770.y, x_770.z)));
    let x_774 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
    let x_776 : vec4<f32> = u_xlat9;
    let x_778 : vec3<f32> = u_xlat0;
    let x_781 : vec4<f32> = u_xlat10;
    let x_783 : vec3<f32> = ((vec3<f32>(x_776.x, x_776.y, x_776.z) * vec3<f32>(x_778.x, x_778.x, x_778.x)) + vec3<f32>(x_781.x, x_781.y, x_781.z));
    let x_784 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  } else {
    let x_787 : vec4<f32> = u_xlat6;
    let x_788 : vec3<f32> = vec3<f32>(x_787.x, x_787.y, x_787.z);
    let x_789 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  }
  let x_791 : f32 = u_xlat49;
  u_xlat0.x = ((-(x_791) * 0.699999988f) + 1.700000048f);
  let x_799 : f32 = u_xlat0.x;
  let x_800 : f32 = u_xlat49;
  u_xlat0.x = (x_799 * x_800);
  let x_804 : f32 = u_xlat0.x;
  u_xlat0.x = (x_804 * 6.0f);
  let x_816 : vec4<f32> = u_xlat9;
  let x_819 : f32 = u_xlat0.x;
  let x_820 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_816.x, x_816.y, x_816.z), x_819);
  u_xlat9 = x_820;
  let x_822 : f32 = u_xlat9.w;
  u_xlat47 = (x_822 + -1.0f);
  let x_826 : f32 = x_52.unity_SpecCube0_HDR.w;
  let x_827 : f32 = u_xlat47;
  u_xlat47 = ((x_826 * x_827) + 1.0f);
  let x_830 : f32 = u_xlat47;
  u_xlat47 = log2(x_830);
  let x_832 : f32 = u_xlat47;
  let x_834 : f32 = x_52.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_832 * x_834);
  let x_836 : f32 = u_xlat47;
  u_xlat47 = exp2(x_836);
  let x_838 : f32 = u_xlat47;
  let x_840 : f32 = x_52.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_838 * x_840);
  let x_842 : vec4<f32> = u_xlat9;
  let x_844 : f32 = u_xlat47;
  let x_846 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_844, x_844, x_844));
  let x_847 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_850 : f32 = x_52.unity_SpecCube0_BoxMin.w;
  u_xlatb48 = (x_850 < 0.999989986f);
  let x_853 : bool = u_xlatb48;
  if (x_853) {
    let x_858 : f32 = x_52.unity_SpecCube1_ProbePosition.w;
    u_xlatb48 = (0.0f < x_858);
    let x_860 : bool = u_xlatb48;
    if (x_860) {
      let x_863 : vec4<f32> = u_xlat6;
      let x_865 : vec4<f32> = u_xlat6;
      u_xlat48 = dot(vec3<f32>(x_863.x, x_863.y, x_863.z), vec3<f32>(x_865.x, x_865.y, x_865.z));
      let x_868 : f32 = u_xlat48;
      u_xlat48 = inverseSqrt(x_868);
      let x_870 : f32 = u_xlat48;
      let x_872 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_870, x_870, x_870) * vec3<f32>(x_872.x, x_872.y, x_872.z));
      let x_876 : vec3<f32> = u_xlat1;
      let x_880 : vec4<f32> = x_52.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_876) + vec3<f32>(x_880.x, x_880.y, x_880.z));
      let x_883 : vec3<f32> = u_xlat12;
      let x_884 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_883 / x_884);
      let x_887 : vec3<f32> = u_xlat1;
      let x_891 : vec4<f32> = x_52.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_887) + vec3<f32>(x_891.x, x_891.y, x_891.z));
      let x_894 : vec3<f32> = u_xlat13;
      let x_895 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_894 / x_895);
      let x_898 : vec3<f32> = u_xlat11;
      let x_900 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_898.x, x_898.y, x_898.z, x_898.x));
      u_xlatb14 = vec3<bool>(x_900.x, x_900.y, x_900.z);
      let x_903 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_903;
      let x_905 : bool = u_xlatb14.x;
      if (x_905) {
        let x_910 : f32 = u_xlat12.x;
        x_906 = x_910;
      } else {
        let x_913 : f32 = u_xlat13.x;
        x_906 = x_913;
      }
      let x_914 : f32 = x_906;
      hlslcc_movcTemp_1.x = x_914;
      let x_917 : bool = u_xlatb14.y;
      if (x_917) {
        let x_922 : f32 = u_xlat12.y;
        x_918 = x_922;
      } else {
        let x_925 : f32 = u_xlat13.y;
        x_918 = x_925;
      }
      let x_926 : f32 = x_918;
      hlslcc_movcTemp_1.y = x_926;
      let x_929 : bool = u_xlatb14.z;
      if (x_929) {
        let x_934 : f32 = u_xlat12.z;
        x_930 = x_934;
      } else {
        let x_937 : f32 = u_xlat13.z;
        x_930 = x_937;
      }
      let x_938 : f32 = x_930;
      hlslcc_movcTemp_1.z = x_938;
      let x_940 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_940;
      let x_942 : f32 = u_xlat12.y;
      let x_944 : f32 = u_xlat12.x;
      u_xlat48 = min(x_942, x_944);
      let x_947 : f32 = u_xlat12.z;
      let x_948 : f32 = u_xlat48;
      u_xlat48 = min(x_947, x_948);
      let x_950 : vec3<f32> = u_xlat1;
      let x_952 : vec4<f32> = x_52.unity_SpecCube1_ProbePosition;
      u_xlat1 = (x_950 + -(vec3<f32>(x_952.x, x_952.y, x_952.z)));
      let x_956 : vec3<f32> = u_xlat11;
      let x_957 : f32 = u_xlat48;
      let x_960 : vec3<f32> = u_xlat1;
      let x_961 : vec3<f32> = ((x_956 * vec3<f32>(x_957, x_957, x_957)) + x_960);
      let x_962 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
    }
    let x_968 : vec4<f32> = u_xlat6;
    let x_971 : f32 = u_xlat0.x;
    let x_972 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_968.x, x_968.y, x_968.z), x_971);
    u_xlat6 = x_972;
    let x_974 : f32 = u_xlat6.w;
    u_xlat0.x = (x_974 + -1.0f);
    let x_979 : f32 = x_52.unity_SpecCube1_HDR.w;
    let x_981 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_979 * x_981) + 1.0f);
    let x_986 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_986);
    let x_990 : f32 = u_xlat0.x;
    let x_992 : f32 = x_52.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_990 * x_992);
    let x_996 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_996);
    let x_1000 : f32 = u_xlat0.x;
    let x_1002 : f32 = x_52.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1000 * x_1002);
    let x_1005 : vec4<f32> = u_xlat6;
    let x_1007 : vec3<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_1005.x, x_1005.y, x_1005.z) * vec3<f32>(x_1007.x, x_1007.x, x_1007.x));
    let x_1010 : f32 = u_xlat47;
    let x_1012 : vec4<f32> = u_xlat9;
    let x_1015 : vec3<f32> = u_xlat1;
    let x_1017 : vec3<f32> = ((vec3<f32>(x_1010, x_1010, x_1010) * vec3<f32>(x_1012.x, x_1012.y, x_1012.z)) + -(x_1015));
    let x_1018 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
    let x_1021 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    let x_1023 : vec4<f32> = u_xlat6;
    let x_1026 : vec3<f32> = u_xlat1;
    let x_1027 : vec3<f32> = ((vec3<f32>(x_1021.w, x_1021.w, x_1021.w) * vec3<f32>(x_1023.x, x_1023.y, x_1023.z)) + x_1026);
    let x_1028 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  }
  let x_1030 : vec4<f32> = u_xlat3;
  let x_1032 : vec4<f32> = vs_COLOR0;
  u_xlat1 = ((vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(x_1032.x, x_1032.y, x_1032.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1040 : f32 = x_52.x_Metallic;
  let x_1042 : f32 = x_52.x_Metallic;
  let x_1044 : f32 = x_52.x_Metallic;
  let x_1045 : vec3<f32> = vec3<f32>(x_1040, x_1042, x_1044);
  let x_1050 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1045.x, x_1045.y, x_1045.z) * x_1050) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1056 : f32 = x_52.x_Metallic;
  u_xlat0.x = ((-(x_1056) * 0.959999979f) + 0.959999979f);
  let x_1062 : vec3<f32> = u_xlat0;
  let x_1064 : vec3<f32> = u_xlat4;
  let x_1065 : vec3<f32> = (vec3<f32>(x_1062.x, x_1062.x, x_1062.x) * x_1064);
  let x_1066 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : vec3<f32> = u_xlat15;
  let x_1069 : f32 = u_xlat46;
  let x_1073 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat15 = ((x_1068 * vec3<f32>(x_1069, x_1069, x_1069)) + vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : vec3<f32> = u_xlat15;
  let x_1077 : vec3<f32> = u_xlat15;
  u_xlat46 = dot(x_1076, x_1077);
  let x_1079 : f32 = u_xlat46;
  u_xlat46 = max(x_1079, 0.001f);
  let x_1082 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_1082);
  let x_1084 : vec3<f32> = u_xlat15;
  let x_1085 : f32 = u_xlat46;
  u_xlat15 = (x_1084 * vec3<f32>(x_1085, x_1085, x_1085));
  let x_1088 : vec4<f32> = u_xlat5;
  let x_1090 : vec4<f32> = u_xlat2;
  u_xlat46 = dot(vec3<f32>(x_1088.x, x_1088.y, x_1088.z), vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : vec4<f32> = u_xlat5;
  let x_1096 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1101 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1101, 0.0f, 1.0f);
  let x_1105 : vec4<f32> = u_xlat5;
  let x_1107 : vec3<f32> = u_xlat15;
  u_xlat17 = dot(vec3<f32>(x_1105.x, x_1105.y, x_1105.z), x_1107);
  let x_1109 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1109, 0.0f, 1.0f);
  let x_1112 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  let x_1114 : vec3<f32> = u_xlat15;
  u_xlat15.x = dot(vec3<f32>(x_1112.x, x_1112.y, x_1112.z), x_1114);
  let x_1118 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_1118, 0.0f, 1.0f);
  let x_1123 : f32 = u_xlat15.x;
  let x_1125 : f32 = u_xlat15.x;
  u_xlat30 = (x_1123 * x_1125);
  let x_1127 : f32 = u_xlat30;
  let x_1129 : f32 = u_xlat49;
  u_xlat30 = dot(vec2<f32>(x_1127, x_1127), vec2<f32>(x_1129, x_1129));
  let x_1132 : f32 = u_xlat30;
  u_xlat30 = (x_1132 + -0.5f);
  let x_1137 : f32 = u_xlat2.x;
  u_xlat45 = (-(x_1137) + 1.0f);
  let x_1141 : f32 = u_xlat45;
  let x_1142 : f32 = u_xlat45;
  u_xlat32 = (x_1141 * x_1142);
  let x_1144 : f32 = u_xlat32;
  let x_1145 : f32 = u_xlat32;
  u_xlat32 = (x_1144 * x_1145);
  let x_1147 : f32 = u_xlat45;
  let x_1148 : f32 = u_xlat32;
  u_xlat45 = (x_1147 * x_1148);
  let x_1150 : f32 = u_xlat30;
  let x_1151 : f32 = u_xlat45;
  u_xlat45 = ((x_1150 * x_1151) + 1.0f);
  let x_1154 : f32 = u_xlat46;
  u_xlat32 = (-(abs(x_1154)) + 1.0f);
  let x_1158 : f32 = u_xlat32;
  let x_1159 : f32 = u_xlat32;
  u_xlat47 = (x_1158 * x_1159);
  let x_1161 : f32 = u_xlat47;
  let x_1162 : f32 = u_xlat47;
  u_xlat47 = (x_1161 * x_1162);
  let x_1164 : f32 = u_xlat32;
  let x_1165 : f32 = u_xlat47;
  u_xlat32 = (x_1164 * x_1165);
  let x_1167 : f32 = u_xlat30;
  let x_1168 : f32 = u_xlat32;
  u_xlat30 = ((x_1167 * x_1168) + 1.0f);
  let x_1171 : f32 = u_xlat30;
  let x_1172 : f32 = u_xlat45;
  u_xlat30 = (x_1171 * x_1172);
  let x_1175 : f32 = u_xlat2.x;
  let x_1176 : f32 = u_xlat30;
  u_xlat30 = (x_1175 * x_1176);
  let x_1178 : f32 = u_xlat49;
  let x_1179 : f32 = u_xlat49;
  u_xlat45 = (x_1178 * x_1179);
  let x_1181 : f32 = u_xlat45;
  u_xlat45 = max(x_1181, 0.002f);
  let x_1184 : f32 = u_xlat45;
  u_xlat47 = (-(x_1184) + 1.0f);
  let x_1187 : f32 = u_xlat46;
  let x_1189 : f32 = u_xlat47;
  let x_1191 : f32 = u_xlat45;
  u_xlat48 = ((abs(x_1187) * x_1189) + x_1191);
  let x_1194 : f32 = u_xlat2.x;
  let x_1195 : f32 = u_xlat47;
  let x_1197 : f32 = u_xlat45;
  u_xlat47 = ((x_1194 * x_1195) + x_1197);
  let x_1199 : f32 = u_xlat46;
  let x_1201 : f32 = u_xlat47;
  u_xlat46 = (abs(x_1199) * x_1201);
  let x_1204 : f32 = u_xlat2.x;
  let x_1205 : f32 = u_xlat48;
  let x_1207 : f32 = u_xlat46;
  u_xlat46 = ((x_1204 * x_1205) + x_1207);
  let x_1209 : f32 = u_xlat46;
  u_xlat46 = (x_1209 + 0.00001f);
  let x_1212 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1212);
  let x_1214 : f32 = u_xlat45;
  let x_1215 : f32 = u_xlat45;
  u_xlat47 = (x_1214 * x_1215);
  let x_1217 : f32 = u_xlat17;
  let x_1218 : f32 = u_xlat47;
  let x_1220 : f32 = u_xlat17;
  u_xlat48 = ((x_1217 * x_1218) + -(x_1220));
  let x_1223 : f32 = u_xlat48;
  let x_1224 : f32 = u_xlat17;
  u_xlat17 = ((x_1223 * x_1224) + 1.0f);
  let x_1227 : f32 = u_xlat47;
  u_xlat47 = (x_1227 * 0.318309873f);
  let x_1230 : f32 = u_xlat17;
  let x_1231 : f32 = u_xlat17;
  u_xlat17 = ((x_1230 * x_1231) + 0.0000001f);
  let x_1235 : f32 = u_xlat47;
  let x_1236 : f32 = u_xlat17;
  u_xlat17 = (x_1235 / x_1236);
  let x_1238 : f32 = u_xlat46;
  let x_1239 : f32 = u_xlat17;
  u_xlat46 = (x_1238 * x_1239);
  let x_1242 : f32 = u_xlat2.x;
  let x_1243 : f32 = u_xlat46;
  u_xlat46 = (x_1242 * x_1243);
  let x_1245 : f32 = u_xlat46;
  u_xlat46 = (x_1245 * 3.141592741f);
  let x_1248 : f32 = u_xlat46;
  u_xlat46 = max(x_1248, 0.0f);
  let x_1250 : f32 = u_xlat45;
  let x_1251 : f32 = u_xlat45;
  u_xlat45 = ((x_1250 * x_1251) + 1.0f);
  let x_1254 : f32 = u_xlat45;
  u_xlat45 = (1.0f / x_1254);
  let x_1256 : vec3<f32> = u_xlat1;
  let x_1257 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_1256, x_1257);
  let x_1262 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1262 == 0.0f));
  let x_1264 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1264);
  let x_1267 : f32 = u_xlat46;
  let x_1269 : f32 = u_xlat2.x;
  u_xlat46 = (x_1267 * x_1269);
  let x_1272 : f32 = u_xlat0.x;
  let x_1275 : f32 = x_52.x_Glossiness;
  u_xlat0.x = (-(x_1272) + x_1275);
  let x_1279 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1279 + 1.0f);
  let x_1283 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1283, 0.0f, 1.0f);
  let x_1286 : vec3<f32> = u_xlat7;
  let x_1287 : f32 = u_xlat30;
  let x_1290 : vec4<f32> = u_xlat8;
  let x_1292 : vec3<f32> = ((x_1286 * vec3<f32>(x_1287, x_1287, x_1287)) + vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1292.x, x_1292.y, x_1293.z, x_1292.z);
  let x_1295 : vec3<f32> = u_xlat7;
  let x_1296 : f32 = u_xlat46;
  u_xlat4 = (x_1295 * vec3<f32>(x_1296, x_1296, x_1296));
  let x_1300 : f32 = u_xlat15.x;
  u_xlat15.x = (-(x_1300) + 1.0f);
  let x_1305 : f32 = u_xlat15.x;
  let x_1307 : f32 = u_xlat15.x;
  u_xlat30 = (x_1305 * x_1307);
  let x_1309 : f32 = u_xlat30;
  let x_1310 : f32 = u_xlat30;
  u_xlat30 = (x_1309 * x_1310);
  let x_1313 : f32 = u_xlat15.x;
  let x_1314 : f32 = u_xlat30;
  u_xlat15.x = (x_1313 * x_1314);
  let x_1317 : vec3<f32> = u_xlat1;
  let x_1320 : vec3<f32> = (-(x_1317) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec4<f32> = u_xlat5;
  let x_1325 : vec3<f32> = u_xlat15;
  let x_1328 : vec3<f32> = u_xlat1;
  let x_1329 : vec3<f32> = ((vec3<f32>(x_1323.x, x_1323.y, x_1323.z) * vec3<f32>(x_1325.x, x_1325.x, x_1325.x)) + x_1328);
  let x_1330 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
  let x_1332 : vec3<f32> = u_xlat4;
  let x_1333 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1332 * vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
  let x_1336 : vec4<f32> = u_xlat3;
  let x_1338 : vec4<f32> = u_xlat2;
  let x_1341 : vec3<f32> = u_xlat4;
  let x_1342 : vec3<f32> = ((vec3<f32>(x_1336.x, x_1336.y, x_1336.z) * vec3<f32>(x_1338.x, x_1338.y, x_1338.w)) + x_1341);
  let x_1343 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1342.x, x_1342.y, x_1343.z, x_1342.z);
  let x_1345 : vec4<f32> = u_xlat10;
  let x_1347 : f32 = u_xlat45;
  u_xlat15 = (vec3<f32>(x_1345.x, x_1345.y, x_1345.z) * vec3<f32>(x_1347, x_1347, x_1347));
  let x_1350 : vec3<f32> = u_xlat1;
  let x_1352 : vec3<f32> = u_xlat0;
  let x_1354 : vec3<f32> = (-(x_1350) + vec3<f32>(x_1352.x, x_1352.x, x_1352.x));
  let x_1355 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : f32 = u_xlat32;
  let x_1359 : vec4<f32> = u_xlat3;
  let x_1362 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1357, x_1357, x_1357) * vec3<f32>(x_1359.x, x_1359.y, x_1359.z)) + x_1362);
  let x_1364 : vec3<f32> = u_xlat15;
  let x_1365 : vec3<f32> = u_xlat1;
  let x_1367 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1364 * x_1365) + vec3<f32>(x_1367.x, x_1367.y, x_1367.w));
  let x_1370 : vec3<f32> = u_xlat0;
  let x_1373 : vec4<f32> = x_52.x_AmbientColor;
  u_xlat0 = (x_1370 + vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
  let x_1377 : f32 = vs_TEXCOORD6;
  let x_1379 : f32 = x_52.x_ProjectionParams.y;
  u_xlat45 = (x_1377 / x_1379);
  let x_1381 : f32 = u_xlat45;
  u_xlat45 = (-(x_1381) + 1.0f);
  let x_1384 : f32 = u_xlat45;
  let x_1386 : f32 = x_52.x_ProjectionParams.z;
  u_xlat45 = (x_1384 * x_1386);
  let x_1388 : f32 = u_xlat45;
  u_xlat45 = max(x_1388, 0.0f);
  let x_1390 : f32 = u_xlat45;
  let x_1393 : f32 = x_52.unity_FogParams.x;
  u_xlat45 = (x_1390 * x_1393);
  let x_1395 : f32 = u_xlat45;
  let x_1396 : f32 = u_xlat45;
  u_xlat45 = (x_1395 * -(x_1396));
  let x_1399 : f32 = u_xlat45;
  u_xlat45 = exp2(x_1399);
  let x_1401 : vec3<f32> = u_xlat0;
  let x_1404 : vec4<f32> = x_52.unity_FogColor;
  u_xlat0 = (x_1401 + -(vec3<f32>(x_1404.x, x_1404.y, x_1404.z)));
  let x_1410 : f32 = u_xlat45;
  let x_1412 : vec3<f32> = u_xlat0;
  let x_1415 : vec4<f32> = x_52.unity_FogColor;
  let x_1417 : vec3<f32> = ((vec3<f32>(x_1410, x_1410, x_1410) * x_1412) + vec3<f32>(x_1415.x, x_1415.y, x_1415.z));
  let x_1418 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(8) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(7) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

