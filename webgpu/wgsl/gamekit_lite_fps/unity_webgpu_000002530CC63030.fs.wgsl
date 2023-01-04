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

@group(0) @binding(13) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BumpMap : sampler;

var<private> u_xlat50 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_EmissionMap : sampler;

var<private> u_xlatb50 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : f32;

var<private> u_xlatb51 : bool;

var<private> u_xlatb52 : bool;

var<private> u_xlat52 : f32;

var<private> u_xlat53 : f32;

@group(0) @binding(9) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(11) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var<uniform> x_373 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShadowMapTexture : sampler;

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

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlat48 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_312 : vec3<f32>;
  var x_525 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_717 : f32;
  var x_729 : f32;
  var x_741 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_902 : f32;
  var x_914 : f32;
  var x_926 : f32;
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
  let x_206 : f32 = x_52.unity_MatrixV[0i].z;
  u_xlat7.x = x_206;
  let x_209 : f32 = x_52.unity_MatrixV[1i].z;
  u_xlat7.y = x_209;
  let x_213 : f32 = x_52.unity_MatrixV[2i].z;
  u_xlat7.z = x_213;
  let x_215 : vec3<f32> = u_xlat16;
  let x_216 : vec4<f32> = u_xlat7;
  u_xlat50 = dot(x_215, vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec3<f32> = u_xlat1;
  let x_222 : vec4<f32> = x_52.unity_ShadowFadeCenterAndType;
  let x_225 : vec3<f32> = (x_219 + -(vec3<f32>(x_222.x, x_222.y, x_222.z)));
  let x_226 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_229 : vec4<f32> = u_xlat7;
  let x_231 : vec4<f32> = u_xlat7;
  u_xlat51 = dot(vec3<f32>(x_229.x, x_229.y, x_229.z), vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : f32 = u_xlat51;
  u_xlat51 = sqrt(x_234);
  let x_236 : f32 = u_xlat50;
  let x_238 : f32 = u_xlat51;
  u_xlat51 = (-(x_236) + x_238);
  let x_241 : f32 = x_52.unity_ShadowFadeCenterAndType.w;
  let x_242 : f32 = u_xlat51;
  let x_244 : f32 = u_xlat50;
  u_xlat50 = ((x_241 * x_242) + x_244);
  let x_246 : f32 = u_xlat50;
  let x_249 : f32 = x_52.x_LightShadowData.z;
  let x_252 : f32 = x_52.x_LightShadowData.w;
  u_xlat50 = ((x_246 * x_249) + x_252);
  let x_254 : f32 = u_xlat50;
  u_xlat50 = clamp(x_254, 0.0f, 1.0f);
  let x_256 : i32 = u_xlati0;
  u_xlati0 = (x_256 * 7i);
  let x_262 : f32 = x_52.unity_ProbeVolumeParams.x;
  u_xlatb51 = (x_262 == 1.0f);
  let x_264 : bool = u_xlatb51;
  if (x_264) {
    let x_269 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb52 = (x_269 == 1.0f);
    let x_271 : vec4<f32> = vs_TEXCOORD1;
    let x_275 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_277 : vec3<f32> = (vec3<f32>(x_271.w, x_271.w, x_271.w) * vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_281 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_283 : vec4<f32> = vs_TEXCOORD0;
    let x_286 : vec4<f32> = u_xlat7;
    let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.w, x_283.w, x_283.w)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
    let x_289 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_292 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_294 : vec4<f32> = vs_TEXCOORD2;
    let x_297 : vec4<f32> = u_xlat7;
    let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.w, x_294.w, x_294.w)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
    let x_300 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat7;
    let x_305 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_307 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_310 : bool = u_xlatb52;
    if (x_310) {
      let x_315 : vec4<f32> = u_xlat7;
      x_312 = vec3<f32>(x_315.x, x_315.y, x_315.z);
    } else {
      let x_318 : vec3<f32> = u_xlat1;
      x_312 = x_318;
    }
    let x_319 : vec3<f32> = x_312;
    let x_320 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
    let x_322 : vec4<f32> = u_xlat7;
    let x_326 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_328 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) + -(x_326));
    let x_329 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
    let x_331 : vec4<f32> = u_xlat7;
    let x_335 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_336 : vec3<f32> = (vec3<f32>(x_331.x, x_331.y, x_331.z) * x_335);
    let x_337 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_337.x, x_336.x, x_336.y, x_336.z);
    let x_341 : f32 = u_xlat7.y;
    u_xlat52 = ((x_341 * 0.25f) + 0.75f);
    let x_348 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat53 = ((x_348 * 0.5f) + 0.75f);
    let x_352 : f32 = u_xlat52;
    let x_353 : f32 = u_xlat53;
    u_xlat7.x = max(x_352, x_353);
    let x_364 : vec4<f32> = u_xlat7;
    let x_366 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_364.x, x_364.z, x_364.w));
    u_xlat7 = x_366;
  } else {
    let x_374 : i32 = u_xlati0;
    let x_378 : vec4<f32> = x_373.unity_Builtins2Array[(x_374 / 7i)].unity_SHCArray;
    u_xlat7 = vec4<f32>(x_378.w, x_378.w, x_378.w, x_378.w);
  }
  let x_380 : vec4<f32> = u_xlat7;
  let x_382 : vec4<f32> = x_52.unity_OcclusionMaskSelector;
  u_xlat52 = dot(x_380, x_382);
  let x_384 : f32 = u_xlat52;
  u_xlat52 = clamp(x_384, 0.0f, 1.0f);
  let x_387 : vec4<f32> = vs_TEXCOORD6;
  let x_389 : vec4<f32> = vs_TEXCOORD6;
  let x_391 : vec2<f32> = (vec2<f32>(x_387.x, x_387.y) / vec2<f32>(x_389.w, x_389.w));
  let x_392 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
  let x_399 : vec4<f32> = u_xlat7;
  let x_401 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_399.x, x_399.y));
  u_xlat53 = x_401.x;
  let x_403 : f32 = u_xlat52;
  let x_404 : f32 = u_xlat53;
  u_xlat52 = (x_403 + -(x_404));
  let x_407 : f32 = u_xlat50;
  let x_408 : f32 = u_xlat52;
  let x_410 : f32 = u_xlat53;
  u_xlat50 = ((x_407 * x_408) + x_410);
  let x_412 : vec4<f32> = vs_TEXCOORD0;
  let x_414 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_418 : vec4<f32> = vs_TEXCOORD1;
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat7.y = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_424 : vec4<f32> = vs_TEXCOORD2;
  let x_426 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_424.x, x_424.y, x_424.z), vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_430 : vec4<f32> = u_xlat7;
  let x_432 : vec4<f32> = u_xlat7;
  u_xlat52 = dot(vec3<f32>(x_430.x, x_430.y, x_430.z), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_435 : f32 = u_xlat52;
  u_xlat52 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat52;
  let x_439 : vec4<f32> = u_xlat7;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_446 : f32 = x_52.x_Glossiness;
  u_xlat52 = (-(x_446) + 1.0f);
  let x_450 : vec4<f32> = u_xlat2;
  let x_453 : vec4<f32> = u_xlat5;
  u_xlat54 = dot(-(vec3<f32>(x_450.x, x_450.y, x_450.z)), vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : f32 = u_xlat54;
  let x_457 : f32 = u_xlat54;
  u_xlat54 = (x_456 + x_457);
  let x_459 : vec4<f32> = u_xlat5;
  let x_461 : f32 = u_xlat54;
  let x_465 : vec4<f32> = u_xlat2;
  let x_468 : vec3<f32> = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * -(vec3<f32>(x_461, x_461, x_461))) + -(vec3<f32>(x_465.x, x_465.y, x_465.z)));
  let x_469 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_472 : f32 = u_xlat50;
  let x_476 : vec4<f32> = x_52.x_LightColor0;
  u_xlat8 = (vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_479 : bool = u_xlatb51;
  if (x_479) {
    let x_483 : f32 = x_52.unity_ProbeVolumeParams.y;
    u_xlatb50 = (x_483 == 1.0f);
    let x_486 : vec4<f32> = vs_TEXCOORD1;
    let x_489 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[1i];
    let x_491 : vec3<f32> = (vec3<f32>(x_486.w, x_486.w, x_486.w) * vec3<f32>(x_489.x, x_489.y, x_489.z));
    let x_492 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
    let x_495 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[0i];
    let x_497 : vec4<f32> = vs_TEXCOORD0;
    let x_500 : vec4<f32> = u_xlat9;
    let x_502 : vec3<f32> = ((vec3<f32>(x_495.x, x_495.y, x_495.z) * vec3<f32>(x_497.w, x_497.w, x_497.w)) + vec3<f32>(x_500.x, x_500.y, x_500.z));
    let x_503 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
    let x_506 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[2i];
    let x_508 : vec4<f32> = vs_TEXCOORD2;
    let x_511 : vec4<f32> = u_xlat9;
    let x_513 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * vec3<f32>(x_508.w, x_508.w, x_508.w)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
    let x_514 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
    let x_516 : vec4<f32> = u_xlat9;
    let x_519 : vec4<f32> = x_52.unity_ProbeVolumeWorldToObject[3i];
    let x_521 : vec3<f32> = (vec3<f32>(x_516.x, x_516.y, x_516.z) + vec3<f32>(x_519.x, x_519.y, x_519.z));
    let x_522 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_524 : bool = u_xlatb50;
    if (x_524) {
      let x_528 : vec4<f32> = u_xlat9;
      x_525 = vec3<f32>(x_528.x, x_528.y, x_528.z);
    } else {
      let x_531 : vec3<f32> = u_xlat1;
      x_525 = x_531;
    }
    let x_532 : vec3<f32> = x_525;
    let x_533 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
    let x_535 : vec4<f32> = u_xlat9;
    let x_538 : vec3<f32> = x_52.unity_ProbeVolumeMin;
    let x_540 : vec3<f32> = (vec3<f32>(x_535.x, x_535.y, x_535.z) + -(x_538));
    let x_541 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
    let x_543 : vec4<f32> = u_xlat9;
    let x_546 : vec3<f32> = x_52.unity_ProbeVolumeSizeInv;
    let x_547 : vec3<f32> = (vec3<f32>(x_543.x, x_543.y, x_543.z) * x_546);
    let x_548 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_548.x, x_547.x, x_547.y, x_547.z);
    let x_551 : f32 = u_xlat9.y;
    u_xlat50 = (x_551 * 0.25f);
    let x_554 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat51 = (x_554 * 0.5f);
    let x_557 : f32 = x_52.unity_ProbeVolumeParams.z;
    u_xlat54 = ((-(x_557) * 0.5f) + 0.25f);
    let x_561 : f32 = u_xlat50;
    let x_562 : f32 = u_xlat51;
    u_xlat50 = max(x_561, x_562);
    let x_564 : f32 = u_xlat54;
    let x_565 : f32 = u_xlat50;
    u_xlat9.x = min(x_564, x_565);
    let x_572 : vec4<f32> = u_xlat9;
    let x_574 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_572.x, x_572.z, x_572.w));
    u_xlat10 = x_574;
    let x_576 : vec4<f32> = u_xlat9;
    let x_579 : vec3<f32> = (vec3<f32>(x_576.x, x_576.z, x_576.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_580 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_585 : vec4<f32> = u_xlat11;
    let x_587 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_585.x, x_585.y, x_585.z));
    u_xlat11 = x_587;
    let x_588 : vec4<f32> = u_xlat9;
    let x_591 : vec3<f32> = (vec3<f32>(x_588.x, x_588.z, x_588.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_592 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
    let x_597 : vec4<f32> = u_xlat9;
    let x_599 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_597.x, x_597.y, x_597.z));
    u_xlat9 = x_599;
    u_xlat5.w = 1.0f;
    let x_601 : vec4<f32> = u_xlat10;
    let x_602 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_601, x_602);
    let x_605 : vec4<f32> = u_xlat11;
    let x_606 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_605, x_606);
    let x_609 : vec4<f32> = u_xlat9;
    let x_610 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_609, x_610);
  } else {
    u_xlat5.w = 1.0f;
    let x_615 : i32 = u_xlati0;
    let x_618 : vec4<f32> = x_373.unity_Builtins2Array[(x_615 / 7i)].unity_SHArArray;
    let x_619 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_618, x_619);
    let x_622 : i32 = u_xlati0;
    let x_625 : vec4<f32> = x_373.unity_Builtins2Array[(x_622 / 7i)].unity_SHAgArray;
    let x_626 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_625, x_626);
    let x_629 : i32 = u_xlati0;
    let x_632 : vec4<f32> = x_373.unity_Builtins2Array[(x_629 / 7i)].unity_SHAbArray;
    let x_633 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_632, x_633);
  }
  let x_636 : vec4<f32> = u_xlat10;
  let x_640 : vec3<f32> = vs_TEXCOORD4;
  let x_641 : vec3<f32> = (vec3<f32>(x_636.x, x_636.y, x_636.z) + x_640);
  let x_642 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
  let x_644 : vec4<f32> = u_xlat9;
  let x_647 : vec3<f32> = max(vec3<f32>(x_644.x, x_644.y, x_644.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_648 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_653 : f32 = x_52.unity_SpecCube0_ProbePosition.w;
  u_xlatb0 = (0.0f < x_653);
  let x_655 : bool = u_xlatb0;
  if (x_655) {
    let x_659 : vec4<f32> = u_xlat7;
    let x_661 : vec4<f32> = u_xlat7;
    u_xlat0.x = dot(vec3<f32>(x_659.x, x_659.y, x_659.z), vec3<f32>(x_661.x, x_661.y, x_661.z));
    let x_666 : f32 = u_xlat0.x;
    u_xlat0.x = inverseSqrt(x_666);
    let x_669 : vec3<f32> = u_xlat0;
    let x_671 : vec4<f32> = u_xlat7;
    let x_673 : vec3<f32> = (vec3<f32>(x_669.x, x_669.x, x_669.x) * vec3<f32>(x_671.x, x_671.y, x_671.z));
    let x_674 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
    let x_676 : vec3<f32> = u_xlat1;
    let x_679 : vec4<f32> = x_52.unity_SpecCube0_BoxMax;
    let x_681 : vec3<f32> = (-(x_676) + vec3<f32>(x_679.x, x_679.y, x_679.z));
    let x_682 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
    let x_684 : vec4<f32> = u_xlat11;
    let x_686 : vec4<f32> = u_xlat10;
    let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) / vec3<f32>(x_686.x, x_686.y, x_686.z));
    let x_689 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
    let x_692 : vec3<f32> = u_xlat1;
    let x_695 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(x_692) + vec3<f32>(x_695.x, x_695.y, x_695.z));
    let x_698 : vec3<f32> = u_xlat12;
    let x_699 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_698 / vec3<f32>(x_699.x, x_699.y, x_699.z));
    let x_706 : vec4<f32> = u_xlat10;
    let x_709 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_706.x, x_706.y, x_706.z, x_706.x));
    u_xlatb13 = vec3<bool>(x_709.x, x_709.y, x_709.z);
    let x_713 : vec4<f32> = u_xlat11;
    hlslcc_movcTemp = x_713;
    let x_715 : bool = u_xlatb13.x;
    if (x_715) {
      let x_721 : f32 = u_xlat11.x;
      x_717 = x_721;
    } else {
      let x_724 : f32 = u_xlat12.x;
      x_717 = x_724;
    }
    let x_725 : f32 = x_717;
    hlslcc_movcTemp.x = x_725;
    let x_728 : bool = u_xlatb13.y;
    if (x_728) {
      let x_733 : f32 = u_xlat11.y;
      x_729 = x_733;
    } else {
      let x_736 : f32 = u_xlat12.y;
      x_729 = x_736;
    }
    let x_737 : f32 = x_729;
    hlslcc_movcTemp.y = x_737;
    let x_740 : bool = u_xlatb13.z;
    if (x_740) {
      let x_745 : f32 = u_xlat11.z;
      x_741 = x_745;
    } else {
      let x_748 : f32 = u_xlat12.z;
      x_741 = x_748;
    }
    let x_749 : f32 = x_741;
    hlslcc_movcTemp.z = x_749;
    let x_751 : vec4<f32> = hlslcc_movcTemp;
    u_xlat11 = x_751;
    let x_753 : f32 = u_xlat11.y;
    let x_755 : f32 = u_xlat11.x;
    u_xlat0.x = min(x_753, x_755);
    let x_759 : f32 = u_xlat11.z;
    let x_761 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_759, x_761);
    let x_764 : vec3<f32> = u_xlat1;
    let x_766 : vec4<f32> = x_52.unity_SpecCube0_ProbePosition;
    let x_769 : vec3<f32> = (x_764 + -(vec3<f32>(x_766.x, x_766.y, x_766.z)));
    let x_770 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
    let x_772 : vec4<f32> = u_xlat10;
    let x_774 : vec3<f32> = u_xlat0;
    let x_777 : vec4<f32> = u_xlat11;
    let x_779 : vec3<f32> = ((vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774.x, x_774.x, x_774.x)) + vec3<f32>(x_777.x, x_777.y, x_777.z));
    let x_780 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  } else {
    let x_783 : vec4<f32> = u_xlat7;
    let x_784 : vec3<f32> = vec3<f32>(x_783.x, x_783.y, x_783.z);
    let x_785 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
  }
  let x_787 : f32 = u_xlat52;
  u_xlat0.x = ((-(x_787) * 0.699999988f) + 1.700000048f);
  let x_795 : f32 = u_xlat0.x;
  let x_796 : f32 = u_xlat52;
  u_xlat0.x = (x_795 * x_796);
  let x_800 : f32 = u_xlat0.x;
  u_xlat0.x = (x_800 * 6.0f);
  let x_812 : vec4<f32> = u_xlat10;
  let x_815 : f32 = u_xlat0.x;
  let x_816 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_812.x, x_812.y, x_812.z), x_815);
  u_xlat10 = x_816;
  let x_818 : f32 = u_xlat10.w;
  u_xlat50 = (x_818 + -1.0f);
  let x_822 : f32 = x_52.unity_SpecCube0_HDR.w;
  let x_823 : f32 = u_xlat50;
  u_xlat50 = ((x_822 * x_823) + 1.0f);
  let x_826 : f32 = u_xlat50;
  u_xlat50 = log2(x_826);
  let x_828 : f32 = u_xlat50;
  let x_830 : f32 = x_52.unity_SpecCube0_HDR.y;
  u_xlat50 = (x_828 * x_830);
  let x_832 : f32 = u_xlat50;
  u_xlat50 = exp2(x_832);
  let x_834 : f32 = u_xlat50;
  let x_836 : f32 = x_52.unity_SpecCube0_HDR.x;
  u_xlat50 = (x_834 * x_836);
  let x_838 : vec4<f32> = u_xlat10;
  let x_840 : f32 = u_xlat50;
  let x_842 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) * vec3<f32>(x_840, x_840, x_840));
  let x_843 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_846 : f32 = x_52.unity_SpecCube0_BoxMin.w;
  u_xlatb51 = (x_846 < 0.999989986f);
  let x_849 : bool = u_xlatb51;
  if (x_849) {
    let x_854 : f32 = x_52.unity_SpecCube1_ProbePosition.w;
    u_xlatb51 = (0.0f < x_854);
    let x_856 : bool = u_xlatb51;
    if (x_856) {
      let x_859 : vec4<f32> = u_xlat7;
      let x_861 : vec4<f32> = u_xlat7;
      u_xlat51 = dot(vec3<f32>(x_859.x, x_859.y, x_859.z), vec3<f32>(x_861.x, x_861.y, x_861.z));
      let x_864 : f32 = u_xlat51;
      u_xlat51 = inverseSqrt(x_864);
      let x_866 : f32 = u_xlat51;
      let x_868 : vec4<f32> = u_xlat7;
      u_xlat12 = (vec3<f32>(x_866, x_866, x_866) * vec3<f32>(x_868.x, x_868.y, x_868.z));
      let x_872 : vec3<f32> = u_xlat1;
      let x_876 : vec4<f32> = x_52.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(x_872) + vec3<f32>(x_876.x, x_876.y, x_876.z));
      let x_879 : vec3<f32> = u_xlat13;
      let x_880 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_879 / x_880);
      let x_883 : vec3<f32> = u_xlat1;
      let x_887 : vec4<f32> = x_52.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(x_883) + vec3<f32>(x_887.x, x_887.y, x_887.z));
      let x_890 : vec3<f32> = u_xlat14;
      let x_891 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_890 / x_891);
      let x_894 : vec3<f32> = u_xlat12;
      let x_896 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_894.x, x_894.y, x_894.z, x_894.x));
      u_xlatb15 = vec3<bool>(x_896.x, x_896.y, x_896.z);
      let x_899 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_899;
      let x_901 : bool = u_xlatb15.x;
      if (x_901) {
        let x_906 : f32 = u_xlat13.x;
        x_902 = x_906;
      } else {
        let x_909 : f32 = u_xlat14.x;
        x_902 = x_909;
      }
      let x_910 : f32 = x_902;
      hlslcc_movcTemp_1.x = x_910;
      let x_913 : bool = u_xlatb15.y;
      if (x_913) {
        let x_918 : f32 = u_xlat13.y;
        x_914 = x_918;
      } else {
        let x_921 : f32 = u_xlat14.y;
        x_914 = x_921;
      }
      let x_922 : f32 = x_914;
      hlslcc_movcTemp_1.y = x_922;
      let x_925 : bool = u_xlatb15.z;
      if (x_925) {
        let x_930 : f32 = u_xlat13.z;
        x_926 = x_930;
      } else {
        let x_933 : f32 = u_xlat14.z;
        x_926 = x_933;
      }
      let x_934 : f32 = x_926;
      hlslcc_movcTemp_1.z = x_934;
      let x_936 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_936;
      let x_938 : f32 = u_xlat13.y;
      let x_940 : f32 = u_xlat13.x;
      u_xlat51 = min(x_938, x_940);
      let x_943 : f32 = u_xlat13.z;
      let x_944 : f32 = u_xlat51;
      u_xlat51 = min(x_943, x_944);
      let x_946 : vec3<f32> = u_xlat1;
      let x_948 : vec4<f32> = x_52.unity_SpecCube1_ProbePosition;
      u_xlat1 = (x_946 + -(vec3<f32>(x_948.x, x_948.y, x_948.z)));
      let x_952 : vec3<f32> = u_xlat12;
      let x_953 : f32 = u_xlat51;
      let x_956 : vec3<f32> = u_xlat1;
      let x_957 : vec3<f32> = ((x_952 * vec3<f32>(x_953, x_953, x_953)) + x_956);
      let x_958 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
    }
    let x_964 : vec4<f32> = u_xlat7;
    let x_967 : f32 = u_xlat0.x;
    let x_968 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_964.x, x_964.y, x_964.z), x_967);
    u_xlat7 = x_968;
    let x_970 : f32 = u_xlat7.w;
    u_xlat0.x = (x_970 + -1.0f);
    let x_975 : f32 = x_52.unity_SpecCube1_HDR.w;
    let x_977 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_975 * x_977) + 1.0f);
    let x_982 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_982);
    let x_986 : f32 = u_xlat0.x;
    let x_988 : f32 = x_52.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_986 * x_988);
    let x_992 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_992);
    let x_996 : f32 = u_xlat0.x;
    let x_998 : f32 = x_52.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_996 * x_998);
    let x_1001 : vec4<f32> = u_xlat7;
    let x_1003 : vec3<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.x, x_1003.x, x_1003.x));
    let x_1006 : f32 = u_xlat50;
    let x_1008 : vec4<f32> = u_xlat10;
    let x_1011 : vec3<f32> = u_xlat1;
    let x_1013 : vec3<f32> = ((vec3<f32>(x_1006, x_1006, x_1006) * vec3<f32>(x_1008.x, x_1008.y, x_1008.z)) + -(x_1011));
    let x_1014 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
    let x_1017 : vec4<f32> = x_52.unity_SpecCube0_BoxMin;
    let x_1019 : vec4<f32> = u_xlat7;
    let x_1022 : vec3<f32> = u_xlat1;
    let x_1023 : vec3<f32> = ((vec3<f32>(x_1017.w, x_1017.w, x_1017.w) * vec3<f32>(x_1019.x, x_1019.y, x_1019.z)) + x_1022);
    let x_1024 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  }
  let x_1026 : vec4<f32> = u_xlat3;
  let x_1028 : vec4<f32> = vs_COLOR0;
  u_xlat1 = ((vec3<f32>(x_1026.x, x_1026.y, x_1026.z) * vec3<f32>(x_1028.x, x_1028.y, x_1028.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1036 : f32 = x_52.x_Metallic;
  let x_1038 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1036, x_1036, x_1036) * x_1038) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1044 : f32 = x_52.x_Metallic;
  u_xlat0.x = ((-(x_1044) * 0.959999979f) + 0.959999979f);
  let x_1050 : vec3<f32> = u_xlat0;
  let x_1052 : vec3<f32> = u_xlat4;
  let x_1053 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.x, x_1050.x) * x_1052);
  let x_1054 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1056 : vec3<f32> = u_xlat16;
  let x_1057 : f32 = u_xlat49;
  let x_1061 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat16 = ((x_1056 * vec3<f32>(x_1057, x_1057, x_1057)) + vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
  let x_1064 : vec3<f32> = u_xlat16;
  let x_1065 : vec3<f32> = u_xlat16;
  u_xlat49 = dot(x_1064, x_1065);
  let x_1067 : f32 = u_xlat49;
  u_xlat49 = max(x_1067, 0.001f);
  let x_1070 : f32 = u_xlat49;
  u_xlat49 = inverseSqrt(x_1070);
  let x_1072 : vec3<f32> = u_xlat16;
  let x_1073 : f32 = u_xlat49;
  u_xlat16 = (x_1072 * vec3<f32>(x_1073, x_1073, x_1073));
  let x_1076 : vec4<f32> = u_xlat5;
  let x_1078 : vec4<f32> = u_xlat2;
  u_xlat49 = dot(vec3<f32>(x_1076.x, x_1076.y, x_1076.z), vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = u_xlat5;
  let x_1084 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
  let x_1089 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1089, 0.0f, 1.0f);
  let x_1093 : vec4<f32> = u_xlat5;
  let x_1095 : vec3<f32> = u_xlat16;
  u_xlat18 = dot(vec3<f32>(x_1093.x, x_1093.y, x_1093.z), x_1095);
  let x_1097 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1097, 0.0f, 1.0f);
  let x_1100 : vec4<f32> = x_52.x_WorldSpaceLightPos0;
  let x_1102 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(vec3<f32>(x_1100.x, x_1100.y, x_1100.z), x_1102);
  let x_1106 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_1106, 0.0f, 1.0f);
  let x_1111 : f32 = u_xlat16.x;
  let x_1113 : f32 = u_xlat16.x;
  u_xlat32 = (x_1111 * x_1113);
  let x_1115 : f32 = u_xlat32;
  let x_1117 : f32 = u_xlat52;
  u_xlat32 = dot(vec2<f32>(x_1115, x_1115), vec2<f32>(x_1117, x_1117));
  let x_1120 : f32 = u_xlat32;
  u_xlat32 = (x_1120 + -0.5f);
  let x_1125 : f32 = u_xlat2.x;
  u_xlat48 = (-(x_1125) + 1.0f);
  let x_1129 : f32 = u_xlat48;
  let x_1130 : f32 = u_xlat48;
  u_xlat34 = (x_1129 * x_1130);
  let x_1132 : f32 = u_xlat34;
  let x_1133 : f32 = u_xlat34;
  u_xlat34 = (x_1132 * x_1133);
  let x_1135 : f32 = u_xlat48;
  let x_1136 : f32 = u_xlat34;
  u_xlat48 = (x_1135 * x_1136);
  let x_1138 : f32 = u_xlat32;
  let x_1139 : f32 = u_xlat48;
  u_xlat48 = ((x_1138 * x_1139) + 1.0f);
  let x_1142 : f32 = u_xlat49;
  u_xlat34 = (-(abs(x_1142)) + 1.0f);
  let x_1146 : f32 = u_xlat34;
  let x_1147 : f32 = u_xlat34;
  u_xlat50 = (x_1146 * x_1147);
  let x_1149 : f32 = u_xlat50;
  let x_1150 : f32 = u_xlat50;
  u_xlat50 = (x_1149 * x_1150);
  let x_1152 : f32 = u_xlat34;
  let x_1153 : f32 = u_xlat50;
  u_xlat34 = (x_1152 * x_1153);
  let x_1155 : f32 = u_xlat32;
  let x_1156 : f32 = u_xlat34;
  u_xlat32 = ((x_1155 * x_1156) + 1.0f);
  let x_1159 : f32 = u_xlat32;
  let x_1160 : f32 = u_xlat48;
  u_xlat32 = (x_1159 * x_1160);
  let x_1163 : f32 = u_xlat2.x;
  let x_1164 : f32 = u_xlat32;
  u_xlat32 = (x_1163 * x_1164);
  let x_1166 : f32 = u_xlat52;
  let x_1167 : f32 = u_xlat52;
  u_xlat48 = (x_1166 * x_1167);
  let x_1169 : f32 = u_xlat48;
  u_xlat48 = max(x_1169, 0.002f);
  let x_1172 : f32 = u_xlat48;
  u_xlat50 = (-(x_1172) + 1.0f);
  let x_1175 : f32 = u_xlat49;
  let x_1177 : f32 = u_xlat50;
  let x_1179 : f32 = u_xlat48;
  u_xlat51 = ((abs(x_1175) * x_1177) + x_1179);
  let x_1182 : f32 = u_xlat2.x;
  let x_1183 : f32 = u_xlat50;
  let x_1185 : f32 = u_xlat48;
  u_xlat50 = ((x_1182 * x_1183) + x_1185);
  let x_1187 : f32 = u_xlat49;
  let x_1189 : f32 = u_xlat50;
  u_xlat49 = (abs(x_1187) * x_1189);
  let x_1192 : f32 = u_xlat2.x;
  let x_1193 : f32 = u_xlat51;
  let x_1195 : f32 = u_xlat49;
  u_xlat49 = ((x_1192 * x_1193) + x_1195);
  let x_1197 : f32 = u_xlat49;
  u_xlat49 = (x_1197 + 0.00001f);
  let x_1200 : f32 = u_xlat49;
  u_xlat49 = (0.5f / x_1200);
  let x_1202 : f32 = u_xlat48;
  let x_1203 : f32 = u_xlat48;
  u_xlat50 = (x_1202 * x_1203);
  let x_1205 : f32 = u_xlat18;
  let x_1206 : f32 = u_xlat50;
  let x_1208 : f32 = u_xlat18;
  u_xlat51 = ((x_1205 * x_1206) + -(x_1208));
  let x_1211 : f32 = u_xlat51;
  let x_1212 : f32 = u_xlat18;
  u_xlat18 = ((x_1211 * x_1212) + 1.0f);
  let x_1215 : f32 = u_xlat50;
  u_xlat50 = (x_1215 * 0.318309873f);
  let x_1218 : f32 = u_xlat18;
  let x_1219 : f32 = u_xlat18;
  u_xlat18 = ((x_1218 * x_1219) + 0.0000001f);
  let x_1223 : f32 = u_xlat50;
  let x_1224 : f32 = u_xlat18;
  u_xlat18 = (x_1223 / x_1224);
  let x_1226 : f32 = u_xlat49;
  let x_1227 : f32 = u_xlat18;
  u_xlat49 = (x_1226 * x_1227);
  let x_1230 : f32 = u_xlat2.x;
  let x_1231 : f32 = u_xlat49;
  u_xlat49 = (x_1230 * x_1231);
  let x_1233 : f32 = u_xlat49;
  u_xlat49 = (x_1233 * 3.141592741f);
  let x_1236 : f32 = u_xlat49;
  u_xlat49 = max(x_1236, 0.0f);
  let x_1238 : f32 = u_xlat48;
  let x_1239 : f32 = u_xlat48;
  u_xlat48 = ((x_1238 * x_1239) + 1.0f);
  let x_1242 : f32 = u_xlat48;
  u_xlat48 = (1.0f / x_1242);
  let x_1244 : vec3<f32> = u_xlat1;
  let x_1245 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_1244, x_1245);
  let x_1250 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1250 == 0.0f));
  let x_1252 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1252);
  let x_1255 : f32 = u_xlat49;
  let x_1257 : f32 = u_xlat2.x;
  u_xlat49 = (x_1255 * x_1257);
  let x_1260 : f32 = u_xlat0.x;
  let x_1263 : f32 = x_52.x_Glossiness;
  u_xlat0.x = (-(x_1260) + x_1263);
  let x_1267 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1267 + 1.0f);
  let x_1271 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1271, 0.0f, 1.0f);
  let x_1274 : vec3<f32> = u_xlat8;
  let x_1275 : f32 = u_xlat32;
  let x_1278 : vec4<f32> = u_xlat9;
  let x_1280 : vec3<f32> = ((x_1274 * vec3<f32>(x_1275, x_1275, x_1275)) + vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
  let x_1281 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1280.x, x_1280.y, x_1281.z, x_1280.z);
  let x_1283 : vec3<f32> = u_xlat8;
  let x_1284 : f32 = u_xlat49;
  u_xlat4 = (x_1283 * vec3<f32>(x_1284, x_1284, x_1284));
  let x_1288 : f32 = u_xlat16.x;
  u_xlat16.x = (-(x_1288) + 1.0f);
  let x_1293 : f32 = u_xlat16.x;
  let x_1295 : f32 = u_xlat16.x;
  u_xlat32 = (x_1293 * x_1295);
  let x_1297 : f32 = u_xlat32;
  let x_1298 : f32 = u_xlat32;
  u_xlat32 = (x_1297 * x_1298);
  let x_1301 : f32 = u_xlat16.x;
  let x_1302 : f32 = u_xlat32;
  u_xlat16.x = (x_1301 * x_1302);
  let x_1305 : vec3<f32> = u_xlat1;
  let x_1308 : vec3<f32> = (-(x_1305) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1309 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1311 : vec4<f32> = u_xlat5;
  let x_1313 : vec3<f32> = u_xlat16;
  let x_1316 : vec3<f32> = u_xlat1;
  let x_1317 : vec3<f32> = ((vec3<f32>(x_1311.x, x_1311.y, x_1311.z) * vec3<f32>(x_1313.x, x_1313.x, x_1313.x)) + x_1316);
  let x_1318 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  let x_1320 : vec3<f32> = u_xlat4;
  let x_1321 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1320 * vec3<f32>(x_1321.x, x_1321.y, x_1321.z));
  let x_1324 : vec4<f32> = u_xlat3;
  let x_1326 : vec4<f32> = u_xlat2;
  let x_1329 : vec3<f32> = u_xlat4;
  let x_1330 : vec3<f32> = ((vec3<f32>(x_1324.x, x_1324.y, x_1324.z) * vec3<f32>(x_1326.x, x_1326.y, x_1326.w)) + x_1329);
  let x_1331 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1330.x, x_1330.y, x_1331.z, x_1330.z);
  let x_1333 : vec4<f32> = u_xlat11;
  let x_1335 : f32 = u_xlat48;
  u_xlat16 = (vec3<f32>(x_1333.x, x_1333.y, x_1333.z) * vec3<f32>(x_1335, x_1335, x_1335));
  let x_1338 : vec3<f32> = u_xlat1;
  let x_1340 : vec3<f32> = u_xlat0;
  let x_1342 : vec3<f32> = (-(x_1338) + vec3<f32>(x_1340.x, x_1340.x, x_1340.x));
  let x_1343 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
  let x_1345 : f32 = u_xlat34;
  let x_1347 : vec4<f32> = u_xlat3;
  let x_1350 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1345, x_1345, x_1345) * vec3<f32>(x_1347.x, x_1347.y, x_1347.z)) + x_1350);
  let x_1352 : vec3<f32> = u_xlat16;
  let x_1353 : vec3<f32> = u_xlat1;
  let x_1355 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1352 * x_1353) + vec3<f32>(x_1355.x, x_1355.y, x_1355.w));
  let x_1360 : vec3<f32> = u_xlat6;
  let x_1363 : f32 = x_52.x_EmissionColor.x;
  let x_1365 : f32 = x_52.x_EmissionColor.y;
  let x_1367 : f32 = x_52.x_EmissionColor.z;
  let x_1370 : vec3<f32> = u_xlat0;
  let x_1371 : vec3<f32> = ((x_1360 * vec3<f32>(x_1363, x_1365, x_1367)) + x_1370);
  let x_1372 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1371.x, x_1371.y, x_1371.z, x_1372.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(7) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(6) vs_TEXCOORD6_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

