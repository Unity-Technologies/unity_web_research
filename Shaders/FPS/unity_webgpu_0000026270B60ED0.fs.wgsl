struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat45 : f32;

var<private> u_xlat46 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlat49 : f32;

var<private> u_xlatb49 : bool;

var<private> u_xlatb5 : bool;

var<private> u_xlat20 : vec3<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> u_xlat35 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb48 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat33 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_246 : vec3<f32>;
  var x_454 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_640 : f32;
  var x_652 : f32;
  var x_664 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_818 : f32;
  var x_830 : f32;
  var x_842 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat45 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat45;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_81 : vec4<f32> = vs_TEXCOORD4;
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  u_xlat46 = dot(vec3<f32>(x_81.x, x_81.y, x_81.z), vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_86);
  let x_90 : f32 = u_xlat46;
  let x_92 : vec4<f32> = vs_TEXCOORD4;
  let x_94 : vec3<f32> = (vec3<f32>(x_90, x_90, x_90) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = vs_TEXCOORD1;
  let x_100 : vec4<f32> = vs_TEXCOORD1;
  u_xlat46 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_103);
  let x_106 : f32 = u_xlat46;
  let x_108 : vec4<f32> = vs_TEXCOORD1;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_119 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_119;
  let x_124 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_124;
  let x_128 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_128;
  let x_132 : vec4<f32> = u_xlat4;
  let x_138 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_139 : vec3<f32> = (-(vec3<f32>(x_132.x, x_132.y, x_132.z)) + x_138);
  let x_140 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_145 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_145;
  let x_149 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_149;
  let x_153 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_153;
  let x_156 : vec4<f32> = u_xlat5;
  let x_158 : vec3<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), x_158);
  let x_160 : vec4<f32> = u_xlat4;
  let x_164 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_167 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) + -(vec3<f32>(x_164.x, x_164.y, x_164.z)));
  let x_168 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec4<f32> = u_xlat5;
  let x_173 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : f32 = u_xlat49;
  u_xlat49 = sqrt(x_176);
  let x_178 : f32 = u_xlat48;
  let x_180 : f32 = u_xlat49;
  u_xlat49 = (-(x_178) + x_180);
  let x_183 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_184 : f32 = u_xlat49;
  let x_186 : f32 = u_xlat48;
  u_xlat48 = ((x_183 * x_184) + x_186);
  let x_188 : f32 = u_xlat48;
  let x_191 : f32 = x_33.x_LightShadowData.z;
  let x_194 : f32 = x_33.x_LightShadowData.w;
  u_xlat48 = ((x_188 * x_191) + x_194);
  let x_196 : f32 = u_xlat48;
  u_xlat48 = clamp(x_196, 0.0f, 1.0f);
  let x_205 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_205 == 1.0f);
  let x_207 : bool = u_xlatb49;
  if (x_207) {
    let x_212 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb5 = (x_212 == 1.0f);
    let x_215 : vec4<f32> = vs_TEXCOORD3;
    let x_219 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    u_xlat20 = (vec3<f32>(x_215.w, x_215.w, x_215.w) * vec3<f32>(x_219.x, x_219.y, x_219.z));
    let x_223 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_225 : vec4<f32> = vs_TEXCOORD2;
    let x_228 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.w, x_225.w)) + x_228);
    let x_231 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_233 : vec4<f32> = vs_TEXCOORD4;
    let x_236 : vec3<f32> = u_xlat20;
    u_xlat20 = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.w, x_233.w, x_233.w)) + x_236);
    let x_238 : vec3<f32> = u_xlat20;
    let x_241 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    u_xlat20 = (x_238 + vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : bool = u_xlatb5;
    if (x_244) {
      let x_249 : vec3<f32> = u_xlat20;
      x_246 = x_249;
    } else {
      let x_251 : vec4<f32> = u_xlat4;
      x_246 = vec3<f32>(x_251.x, x_251.y, x_251.z);
    }
    let x_253 : vec3<f32> = x_246;
    let x_254 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
    let x_256 : vec4<f32> = u_xlat5;
    let x_260 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_262 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + -(x_260));
    let x_263 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat5;
    let x_269 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_270 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) * x_269);
    let x_271 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_271.x, x_270.x, x_270.y, x_270.z);
    let x_274 : f32 = u_xlat5.y;
    u_xlat20.x = ((x_274 * 0.25f) + 0.75f);
    let x_281 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat6.x = ((x_281 * 0.5f) + 0.75f);
    let x_287 : f32 = u_xlat20.x;
    let x_289 : f32 = u_xlat6.x;
    u_xlat5.x = max(x_287, x_289);
    let x_300 : vec4<f32> = u_xlat5;
    let x_302 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_300.x, x_300.z, x_300.w));
    u_xlat5 = x_302;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_308 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat5.x = dot(x_308, x_311);
  let x_315 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_315, 0.0f, 1.0f);
  let x_319 : vec4<f32> = vs_TEXCOORD7;
  let x_321 : vec4<f32> = vs_TEXCOORD7;
  let x_323 : vec2<f32> = (vec2<f32>(x_319.x, x_319.y) / vec2<f32>(x_321.w, x_321.w));
  let x_324 : vec3<f32> = u_xlat20;
  u_xlat20 = vec3<f32>(x_323.x, x_323.y, x_324.z);
  let x_331 : vec3<f32> = u_xlat20;
  let x_333 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_331.x, x_331.y));
  u_xlat20.x = x_333.x;
  let x_337 : f32 = u_xlat20.x;
  let x_340 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_337) + x_340);
  let x_343 : f32 = u_xlat48;
  let x_345 : f32 = u_xlat5.x;
  let x_348 : f32 = u_xlat20.x;
  u_xlat48 = ((x_343 * x_345) + x_348);
  let x_355 : vec4<f32> = vs_TEXCOORD0;
  let x_357 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_355.x, x_355.y));
  u_xlat5.x = x_357.y;
  let x_362 : f32 = x_33.x_OcclusionStrength;
  u_xlat20.x = (-(x_362) + 1.0f);
  let x_367 : f32 = u_xlat5.x;
  let x_369 : f32 = x_33.x_OcclusionStrength;
  let x_372 : f32 = u_xlat20.x;
  u_xlat5.x = ((x_367 * x_369) + x_372);
  let x_377 : f32 = x_33.x_Glossiness;
  u_xlat20.x = (-(x_377) + 1.0f);
  let x_382 : vec4<f32> = u_xlat3;
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat35 = dot(vec3<f32>(x_382.x, x_382.y, x_382.z), vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : f32 = u_xlat35;
  let x_388 : f32 = u_xlat35;
  u_xlat35 = (x_387 + x_388);
  let x_390 : vec4<f32> = u_xlat2;
  let x_392 : f32 = u_xlat35;
  let x_396 : vec4<f32> = u_xlat3;
  u_xlat6 = ((vec3<f32>(x_390.x, x_390.y, x_390.z) * -(vec3<f32>(x_392, x_392, x_392))) + vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_400 : f32 = u_xlat48;
  let x_404 : vec4<f32> = x_33.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_400, x_400, x_400) * vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : bool = u_xlatb49;
  if (x_407) {
    let x_412 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_412 == 1.0f);
    let x_415 : vec4<f32> = vs_TEXCOORD3;
    let x_418 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_420 : vec3<f32> = (vec3<f32>(x_415.w, x_415.w, x_415.w) * vec3<f32>(x_418.x, x_418.y, x_418.z));
    let x_421 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
    let x_424 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_426 : vec4<f32> = vs_TEXCOORD2;
    let x_429 : vec4<f32> = u_xlat8;
    let x_431 : vec3<f32> = ((vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426.w, x_426.w, x_426.w)) + vec3<f32>(x_429.x, x_429.y, x_429.z));
    let x_432 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
    let x_435 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_437 : vec4<f32> = vs_TEXCOORD4;
    let x_440 : vec4<f32> = u_xlat8;
    let x_442 : vec3<f32> = ((vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_437.w, x_437.w, x_437.w)) + vec3<f32>(x_440.x, x_440.y, x_440.z));
    let x_443 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
    let x_445 : vec4<f32> = u_xlat8;
    let x_448 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_450 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) + vec3<f32>(x_448.x, x_448.y, x_448.z));
    let x_451 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
    let x_453 : bool = u_xlatb48;
    if (x_453) {
      let x_457 : vec4<f32> = u_xlat8;
      x_454 = vec3<f32>(x_457.x, x_457.y, x_457.z);
    } else {
      let x_460 : vec4<f32> = u_xlat4;
      x_454 = vec3<f32>(x_460.x, x_460.y, x_460.z);
    }
    let x_462 : vec3<f32> = x_454;
    let x_463 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
    let x_465 : vec4<f32> = u_xlat8;
    let x_468 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_470 : vec3<f32> = (vec3<f32>(x_465.x, x_465.y, x_465.z) + -(x_468));
    let x_471 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
    let x_473 : vec4<f32> = u_xlat8;
    let x_476 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_477 : vec3<f32> = (vec3<f32>(x_473.x, x_473.y, x_473.z) * x_476);
    let x_478 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_478.x, x_477.x, x_477.y, x_477.z);
    let x_481 : f32 = u_xlat8.y;
    u_xlat48 = (x_481 * 0.25f);
    let x_484 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat49 = (x_484 * 0.5f);
    let x_487 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat35 = ((-(x_487) * 0.5f) + 0.25f);
    let x_491 : f32 = u_xlat48;
    let x_492 : f32 = u_xlat49;
    u_xlat48 = max(x_491, x_492);
    let x_494 : f32 = u_xlat35;
    let x_495 : f32 = u_xlat48;
    u_xlat8.x = min(x_494, x_495);
    let x_502 : vec4<f32> = u_xlat8;
    let x_504 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_502.x, x_502.z, x_502.w));
    u_xlat9 = x_504;
    let x_506 : vec4<f32> = u_xlat8;
    let x_509 : vec3<f32> = (vec3<f32>(x_506.x, x_506.z, x_506.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_510 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_515 : vec4<f32> = u_xlat10;
    let x_517 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_515.x, x_515.y, x_515.z));
    u_xlat10 = x_517;
    let x_518 : vec4<f32> = u_xlat8;
    let x_521 : vec3<f32> = (vec3<f32>(x_518.x, x_518.z, x_518.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_522 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_527 : vec4<f32> = u_xlat8;
    let x_529 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_527.x, x_527.y, x_527.z));
    u_xlat8 = x_529;
    u_xlat2.w = 1.0f;
    let x_531 : vec4<f32> = u_xlat9;
    let x_532 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_531, x_532);
    let x_535 : vec4<f32> = u_xlat10;
    let x_536 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_535, x_536);
    let x_539 : vec4<f32> = u_xlat8;
    let x_540 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_539, x_540);
  } else {
    u_xlat2.w = 1.0f;
    let x_546 : vec4<f32> = x_33.unity_SHAr;
    let x_547 : vec4<f32> = u_xlat2;
    u_xlat9.x = dot(x_546, x_547);
    let x_551 : vec4<f32> = x_33.unity_SHAg;
    let x_552 : vec4<f32> = u_xlat2;
    u_xlat9.y = dot(x_551, x_552);
    let x_557 : vec4<f32> = x_33.unity_SHAb;
    let x_558 : vec4<f32> = u_xlat2;
    u_xlat9.z = dot(x_557, x_558);
  }
  let x_561 : vec4<f32> = u_xlat9;
  let x_564 : vec4<f32> = vs_TEXCOORD5;
  let x_566 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) + vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_569 : vec4<f32> = u_xlat8;
  let x_572 : vec3<f32> = max(vec3<f32>(x_569.x, x_569.y, x_569.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_573 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_578 : f32 = x_33.unity_SpecCube0_ProbePosition.w;
  u_xlatb47 = (0.0f < x_578);
  let x_580 : bool = u_xlatb47;
  if (x_580) {
    let x_584 : vec3<f32> = u_xlat6;
    let x_585 : vec3<f32> = u_xlat6;
    u_xlat47 = dot(x_584, x_585);
    let x_587 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_587);
    let x_589 : f32 = u_xlat47;
    let x_591 : vec3<f32> = u_xlat6;
    let x_592 : vec3<f32> = (vec3<f32>(x_589, x_589, x_589) * x_591);
    let x_593 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
    let x_595 : vec4<f32> = u_xlat4;
    let x_600 : vec4<f32> = x_33.unity_SpecCube0_BoxMax;
    let x_602 : vec3<f32> = (-(vec3<f32>(x_595.x, x_595.y, x_595.z)) + vec3<f32>(x_600.x, x_600.y, x_600.z));
    let x_603 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
    let x_605 : vec4<f32> = u_xlat10;
    let x_607 : vec4<f32> = u_xlat9;
    let x_609 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) / vec3<f32>(x_607.x, x_607.y, x_607.z));
    let x_610 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
    let x_613 : vec4<f32> = u_xlat4;
    let x_618 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(vec3<f32>(x_613.x, x_613.y, x_613.z)) + vec3<f32>(x_618.x, x_618.y, x_618.z));
    let x_621 : vec3<f32> = u_xlat11;
    let x_622 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_621 / vec3<f32>(x_622.x, x_622.y, x_622.z));
    let x_629 : vec4<f32> = u_xlat9;
    let x_632 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_629.x, x_629.y, x_629.z, x_629.x));
    u_xlatb12 = vec3<bool>(x_632.x, x_632.y, x_632.z);
    let x_636 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_636;
    let x_638 : bool = u_xlatb12.x;
    if (x_638) {
      let x_644 : f32 = u_xlat10.x;
      x_640 = x_644;
    } else {
      let x_647 : f32 = u_xlat11.x;
      x_640 = x_647;
    }
    let x_648 : f32 = x_640;
    hlslcc_movcTemp.x = x_648;
    let x_651 : bool = u_xlatb12.y;
    if (x_651) {
      let x_656 : f32 = u_xlat10.y;
      x_652 = x_656;
    } else {
      let x_659 : f32 = u_xlat11.y;
      x_652 = x_659;
    }
    let x_660 : f32 = x_652;
    hlslcc_movcTemp.y = x_660;
    let x_663 : bool = u_xlatb12.z;
    if (x_663) {
      let x_668 : f32 = u_xlat10.z;
      x_664 = x_668;
    } else {
      let x_671 : f32 = u_xlat11.z;
      x_664 = x_671;
    }
    let x_672 : f32 = x_664;
    hlslcc_movcTemp.z = x_672;
    let x_674 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_674;
    let x_676 : f32 = u_xlat10.y;
    let x_678 : f32 = u_xlat10.x;
    u_xlat47 = min(x_676, x_678);
    let x_681 : f32 = u_xlat10.z;
    let x_682 : f32 = u_xlat47;
    u_xlat47 = min(x_681, x_682);
    let x_684 : vec4<f32> = u_xlat4;
    let x_687 : vec4<f32> = x_33.unity_SpecCube0_ProbePosition;
    let x_690 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) + -(vec3<f32>(x_687.x, x_687.y, x_687.z)));
    let x_691 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
    let x_693 : vec4<f32> = u_xlat9;
    let x_695 : f32 = u_xlat47;
    let x_698 : vec4<f32> = u_xlat10;
    let x_700 : vec3<f32> = ((vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(x_695, x_695, x_695)) + vec3<f32>(x_698.x, x_698.y, x_698.z));
    let x_701 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  } else {
    let x_704 : vec3<f32> = u_xlat6;
    let x_705 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  }
  let x_708 : f32 = u_xlat20.x;
  u_xlat47 = ((-(x_708) * 0.699999988f) + 1.700000048f);
  let x_714 : f32 = u_xlat47;
  let x_716 : f32 = u_xlat20.x;
  u_xlat47 = (x_714 * x_716);
  let x_718 : f32 = u_xlat47;
  u_xlat47 = (x_718 * 6.0f);
  let x_729 : vec4<f32> = u_xlat9;
  let x_731 : f32 = u_xlat47;
  let x_732 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_729.x, x_729.y, x_729.z), x_731);
  u_xlat9 = x_732;
  let x_734 : f32 = u_xlat9.w;
  u_xlat48 = (x_734 + -1.0f);
  let x_739 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_740 : f32 = u_xlat48;
  u_xlat48 = ((x_739 * x_740) + 1.0f);
  let x_743 : f32 = u_xlat48;
  u_xlat48 = log2(x_743);
  let x_745 : f32 = u_xlat48;
  let x_747 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat48 = (x_745 * x_747);
  let x_749 : f32 = u_xlat48;
  u_xlat48 = exp2(x_749);
  let x_751 : f32 = u_xlat48;
  let x_753 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat48 = (x_751 * x_753);
  let x_755 : vec4<f32> = u_xlat9;
  let x_757 : f32 = u_xlat48;
  let x_759 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_757, x_757, x_757));
  let x_760 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_763 : f32 = x_33.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_763 < 0.999989986f);
  let x_766 : bool = u_xlatb49;
  if (x_766) {
    let x_771 : f32 = x_33.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_771);
    let x_773 : bool = u_xlatb49;
    if (x_773) {
      let x_776 : vec3<f32> = u_xlat6;
      let x_777 : vec3<f32> = u_xlat6;
      u_xlat49 = dot(x_776, x_777);
      let x_779 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_779);
      let x_781 : f32 = u_xlat49;
      let x_783 : vec3<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_781, x_781, x_781) * x_783);
      let x_786 : vec4<f32> = u_xlat4;
      let x_791 : vec4<f32> = x_33.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(vec3<f32>(x_786.x, x_786.y, x_786.z)) + vec3<f32>(x_791.x, x_791.y, x_791.z));
      let x_794 : vec3<f32> = u_xlat12;
      let x_795 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_794 / x_795);
      let x_798 : vec4<f32> = u_xlat4;
      let x_803 : vec4<f32> = x_33.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(vec3<f32>(x_798.x, x_798.y, x_798.z)) + vec3<f32>(x_803.x, x_803.y, x_803.z));
      let x_806 : vec3<f32> = u_xlat13;
      let x_807 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_806 / x_807);
      let x_810 : vec3<f32> = u_xlat11;
      let x_812 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_810.x, x_810.y, x_810.z, x_810.x));
      u_xlatb14 = vec3<bool>(x_812.x, x_812.y, x_812.z);
      let x_815 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_815;
      let x_817 : bool = u_xlatb14.x;
      if (x_817) {
        let x_822 : f32 = u_xlat12.x;
        x_818 = x_822;
      } else {
        let x_825 : f32 = u_xlat13.x;
        x_818 = x_825;
      }
      let x_826 : f32 = x_818;
      hlslcc_movcTemp_1.x = x_826;
      let x_829 : bool = u_xlatb14.y;
      if (x_829) {
        let x_834 : f32 = u_xlat12.y;
        x_830 = x_834;
      } else {
        let x_837 : f32 = u_xlat13.y;
        x_830 = x_837;
      }
      let x_838 : f32 = x_830;
      hlslcc_movcTemp_1.y = x_838;
      let x_841 : bool = u_xlatb14.z;
      if (x_841) {
        let x_846 : f32 = u_xlat12.z;
        x_842 = x_846;
      } else {
        let x_849 : f32 = u_xlat13.z;
        x_842 = x_849;
      }
      let x_850 : f32 = x_842;
      hlslcc_movcTemp_1.z = x_850;
      let x_852 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_852;
      let x_854 : f32 = u_xlat12.y;
      let x_856 : f32 = u_xlat12.x;
      u_xlat49 = min(x_854, x_856);
      let x_859 : f32 = u_xlat12.z;
      let x_860 : f32 = u_xlat49;
      u_xlat49 = min(x_859, x_860);
      let x_862 : vec4<f32> = u_xlat4;
      let x_865 : vec4<f32> = x_33.unity_SpecCube1_ProbePosition;
      let x_868 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) + -(vec3<f32>(x_865.x, x_865.y, x_865.z)));
      let x_869 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
      let x_871 : vec3<f32> = u_xlat11;
      let x_872 : f32 = u_xlat49;
      let x_875 : vec4<f32> = u_xlat4;
      u_xlat6 = ((x_871 * vec3<f32>(x_872, x_872, x_872)) + vec3<f32>(x_875.x, x_875.y, x_875.z));
    }
    let x_882 : vec3<f32> = u_xlat6;
    let x_883 : f32 = u_xlat47;
    let x_884 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_882, x_883);
    u_xlat4 = x_884;
    let x_886 : f32 = u_xlat4.w;
    u_xlat47 = (x_886 + -1.0f);
    let x_890 : f32 = x_33.unity_SpecCube1_HDR.w;
    let x_891 : f32 = u_xlat47;
    u_xlat47 = ((x_890 * x_891) + 1.0f);
    let x_894 : f32 = u_xlat47;
    u_xlat47 = log2(x_894);
    let x_896 : f32 = u_xlat47;
    let x_898 : f32 = x_33.unity_SpecCube1_HDR.y;
    u_xlat47 = (x_896 * x_898);
    let x_900 : f32 = u_xlat47;
    u_xlat47 = exp2(x_900);
    let x_902 : f32 = u_xlat47;
    let x_904 : f32 = x_33.unity_SpecCube1_HDR.x;
    u_xlat47 = (x_902 * x_904);
    let x_906 : vec4<f32> = u_xlat4;
    let x_908 : f32 = u_xlat47;
    let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) * vec3<f32>(x_908, x_908, x_908));
    let x_911 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
    let x_913 : f32 = u_xlat48;
    let x_915 : vec4<f32> = u_xlat9;
    let x_918 : vec4<f32> = u_xlat4;
    u_xlat6 = ((vec3<f32>(x_913, x_913, x_913) * vec3<f32>(x_915.x, x_915.y, x_915.z)) + -(vec3<f32>(x_918.x, x_918.y, x_918.z)));
    let x_923 : vec4<f32> = x_33.unity_SpecCube0_BoxMin;
    let x_925 : vec3<f32> = u_xlat6;
    let x_927 : vec4<f32> = u_xlat4;
    let x_929 : vec3<f32> = ((vec3<f32>(x_923.w, x_923.w, x_923.w) * x_925) + vec3<f32>(x_927.x, x_927.y, x_927.z));
    let x_930 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  }
  let x_932 : vec4<f32> = u_xlat5;
  let x_934 : vec4<f32> = u_xlat10;
  let x_936 : vec3<f32> = (vec3<f32>(x_932.x, x_932.x, x_932.x) * vec3<f32>(x_934.x, x_934.y, x_934.z));
  let x_937 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_939 : vec4<f32> = vs_TEXCOORD1;
  let x_942 : f32 = u_xlat46;
  let x_946 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6 = ((-(vec3<f32>(x_939.x, x_939.y, x_939.z)) * vec3<f32>(x_942, x_942, x_942)) + vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec3<f32> = u_xlat6;
  let x_950 : vec3<f32> = u_xlat6;
  u_xlat46 = dot(x_949, x_950);
  let x_952 : f32 = u_xlat46;
  u_xlat46 = max(x_952, 0.001f);
  let x_955 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_955);
  let x_957 : f32 = u_xlat46;
  let x_959 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_957, x_957, x_957) * x_959);
  let x_961 : vec4<f32> = u_xlat2;
  let x_963 : vec4<f32> = u_xlat3;
  u_xlat46 = dot(vec3<f32>(x_961.x, x_961.y, x_961.z), -(vec3<f32>(x_963.x, x_963.y, x_963.z)));
  let x_967 : vec4<f32> = u_xlat2;
  let x_970 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat47 = dot(vec3<f32>(x_967.x, x_967.y, x_967.z), vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : f32 = u_xlat47;
  u_xlat47 = clamp(x_973, 0.0f, 1.0f);
  let x_975 : vec4<f32> = u_xlat2;
  let x_977 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_975.x, x_975.y, x_975.z), x_977);
  let x_981 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_981, 0.0f, 1.0f);
  let x_986 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  let x_988 : vec3<f32> = u_xlat6;
  u_xlat17.x = dot(vec3<f32>(x_986.x, x_986.y, x_986.z), x_988);
  let x_992 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_992, 0.0f, 1.0f);
  let x_997 : f32 = u_xlat17.x;
  let x_999 : f32 = u_xlat17.x;
  u_xlat32 = (x_997 * x_999);
  let x_1001 : f32 = u_xlat32;
  let x_1003 : vec3<f32> = u_xlat20;
  u_xlat32 = dot(vec2<f32>(x_1001, x_1001), vec2<f32>(x_1003.x, x_1003.x));
  let x_1006 : f32 = u_xlat32;
  u_xlat32 = (x_1006 + -0.5f);
  let x_1009 : f32 = u_xlat47;
  u_xlat3.x = (-(x_1009) + 1.0f);
  let x_1015 : f32 = u_xlat3.x;
  let x_1017 : f32 = u_xlat3.x;
  u_xlat18 = (x_1015 * x_1017);
  let x_1019 : f32 = u_xlat18;
  let x_1020 : f32 = u_xlat18;
  u_xlat18 = (x_1019 * x_1020);
  let x_1023 : f32 = u_xlat3.x;
  let x_1024 : f32 = u_xlat18;
  u_xlat3.x = (x_1023 * x_1024);
  let x_1027 : f32 = u_xlat32;
  let x_1029 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1027 * x_1029) + 1.0f);
  let x_1033 : f32 = u_xlat46;
  u_xlat18 = (-(abs(x_1033)) + 1.0f);
  let x_1038 : f32 = u_xlat18;
  let x_1039 : f32 = u_xlat18;
  u_xlat33 = (x_1038 * x_1039);
  let x_1041 : f32 = u_xlat33;
  let x_1042 : f32 = u_xlat33;
  u_xlat33 = (x_1041 * x_1042);
  let x_1044 : f32 = u_xlat18;
  let x_1045 : f32 = u_xlat33;
  u_xlat18 = (x_1044 * x_1045);
  let x_1047 : f32 = u_xlat32;
  let x_1048 : f32 = u_xlat18;
  u_xlat32 = ((x_1047 * x_1048) + 1.0f);
  let x_1051 : f32 = u_xlat32;
  let x_1053 : f32 = u_xlat3.x;
  u_xlat32 = (x_1051 * x_1053);
  let x_1055 : f32 = u_xlat47;
  let x_1056 : f32 = u_xlat32;
  u_xlat32 = (x_1055 * x_1056);
  let x_1059 : f32 = u_xlat20.x;
  let x_1061 : f32 = u_xlat20.x;
  u_xlat3.x = (x_1059 * x_1061);
  let x_1065 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_1065, 0.002f);
  let x_1070 : f32 = u_xlat3.x;
  u_xlat33 = (-(x_1070) + 1.0f);
  let x_1073 : f32 = u_xlat46;
  let x_1075 : f32 = u_xlat33;
  let x_1078 : f32 = u_xlat3.x;
  u_xlat48 = ((abs(x_1073) * x_1075) + x_1078);
  let x_1080 : f32 = u_xlat47;
  let x_1081 : f32 = u_xlat33;
  let x_1084 : f32 = u_xlat3.x;
  u_xlat33 = ((x_1080 * x_1081) + x_1084);
  let x_1086 : f32 = u_xlat46;
  let x_1088 : f32 = u_xlat33;
  u_xlat46 = (abs(x_1086) * x_1088);
  let x_1090 : f32 = u_xlat47;
  let x_1091 : f32 = u_xlat48;
  let x_1093 : f32 = u_xlat46;
  u_xlat46 = ((x_1090 * x_1091) + x_1093);
  let x_1095 : f32 = u_xlat46;
  u_xlat46 = (x_1095 + 0.00001f);
  let x_1098 : f32 = u_xlat46;
  u_xlat46 = (0.5f / x_1098);
  let x_1101 : f32 = u_xlat3.x;
  let x_1103 : f32 = u_xlat3.x;
  u_xlat33 = (x_1101 * x_1103);
  let x_1106 : f32 = u_xlat2.x;
  let x_1107 : f32 = u_xlat33;
  let x_1110 : f32 = u_xlat2.x;
  u_xlat48 = ((x_1106 * x_1107) + -(x_1110));
  let x_1113 : f32 = u_xlat48;
  let x_1115 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1113 * x_1115) + 1.0f);
  let x_1119 : f32 = u_xlat33;
  u_xlat33 = (x_1119 * 0.318309873f);
  let x_1123 : f32 = u_xlat2.x;
  let x_1125 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1123 * x_1125) + 0.0000001f);
  let x_1130 : f32 = u_xlat33;
  let x_1132 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1130 / x_1132);
  let x_1135 : f32 = u_xlat46;
  let x_1137 : f32 = u_xlat2.x;
  u_xlat46 = (x_1135 * x_1137);
  let x_1139 : f32 = u_xlat47;
  let x_1140 : f32 = u_xlat46;
  u_xlat46 = (x_1139 * x_1140);
  let x_1142 : f32 = u_xlat46;
  u_xlat46 = (x_1142 * 3.141592741f);
  let x_1145 : f32 = u_xlat46;
  u_xlat46 = max(x_1145, 0.0f);
  let x_1148 : f32 = u_xlat3.x;
  let x_1150 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_1148 * x_1150) + 1.0f);
  let x_1155 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_1155);
  let x_1158 : vec3<f32> = u_xlat0;
  let x_1159 : vec3<f32> = u_xlat0;
  u_xlat47 = dot(x_1158, x_1159);
  let x_1161 : f32 = u_xlat47;
  u_xlatb47 = !((x_1161 == 0.0f));
  let x_1163 : bool = u_xlatb47;
  u_xlat47 = select(0.0f, 1.0f, x_1163);
  let x_1165 : f32 = u_xlat46;
  let x_1166 : f32 = u_xlat47;
  u_xlat46 = (x_1165 * x_1166);
  let x_1168 : f32 = u_xlat45;
  let x_1171 : f32 = x_33.x_Glossiness;
  u_xlat45 = (-(x_1168) + x_1171);
  let x_1173 : f32 = u_xlat45;
  u_xlat45 = (x_1173 + 1.0f);
  let x_1175 : f32 = u_xlat45;
  u_xlat45 = clamp(x_1175, 0.0f, 1.0f);
  let x_1177 : f32 = u_xlat32;
  let x_1179 : vec3<f32> = u_xlat7;
  let x_1180 : vec3<f32> = (vec3<f32>(x_1177, x_1177, x_1177) * x_1179);
  let x_1181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1180.x, x_1181.y, x_1180.y, x_1180.z);
  let x_1183 : vec4<f32> = u_xlat8;
  let x_1185 : vec4<f32> = u_xlat5;
  let x_1188 : vec4<f32> = u_xlat3;
  let x_1190 : vec3<f32> = ((vec3<f32>(x_1183.x, x_1183.y, x_1183.z) * vec3<f32>(x_1185.x, x_1185.x, x_1185.x)) + vec3<f32>(x_1188.x, x_1188.z, x_1188.w));
  let x_1191 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1190.x, x_1191.y, x_1190.y, x_1190.z);
  let x_1193 : vec3<f32> = u_xlat7;
  let x_1194 : f32 = u_xlat46;
  let x_1196 : vec3<f32> = (x_1193 * vec3<f32>(x_1194, x_1194, x_1194));
  let x_1197 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
  let x_1200 : f32 = u_xlat17.x;
  u_xlat46 = (-(x_1200) + 1.0f);
  let x_1203 : f32 = u_xlat46;
  let x_1204 : f32 = u_xlat46;
  u_xlat17.x = (x_1203 * x_1204);
  let x_1208 : f32 = u_xlat17.x;
  let x_1210 : f32 = u_xlat17.x;
  u_xlat17.x = (x_1208 * x_1210);
  let x_1213 : f32 = u_xlat46;
  let x_1215 : f32 = u_xlat17.x;
  u_xlat46 = (x_1213 * x_1215);
  let x_1217 : vec3<f32> = u_xlat0;
  u_xlat17 = (-(x_1217) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1221 : vec3<f32> = u_xlat17;
  let x_1222 : f32 = u_xlat46;
  let x_1225 : vec3<f32> = u_xlat0;
  u_xlat17 = ((x_1221 * vec3<f32>(x_1222, x_1222, x_1222)) + x_1225);
  let x_1227 : vec3<f32> = u_xlat17;
  let x_1228 : vec4<f32> = u_xlat5;
  u_xlat17 = (x_1227 * vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : vec3<f32> = u_xlat1;
  let x_1232 : vec4<f32> = u_xlat3;
  let x_1235 : vec3<f32> = u_xlat17;
  u_xlat1 = ((x_1231 * vec3<f32>(x_1232.x, x_1232.z, x_1232.w)) + x_1235);
  let x_1237 : vec4<f32> = u_xlat4;
  let x_1239 : vec4<f32> = u_xlat2;
  let x_1241 : vec3<f32> = (vec3<f32>(x_1237.x, x_1237.y, x_1237.z) * vec3<f32>(x_1239.x, x_1239.x, x_1239.x));
  let x_1242 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec3<f32> = u_xlat0;
  let x_1246 : f32 = u_xlat45;
  let x_1248 : vec3<f32> = (-(x_1244) + vec3<f32>(x_1246, x_1246, x_1246));
  let x_1249 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1248.x, x_1249.y, x_1248.y, x_1248.z);
  let x_1251 : f32 = u_xlat18;
  let x_1253 : vec4<f32> = u_xlat3;
  let x_1256 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1251, x_1251, x_1251) * vec3<f32>(x_1253.x, x_1253.z, x_1253.w)) + x_1256);
  let x_1260 : vec4<f32> = u_xlat2;
  let x_1262 : vec3<f32> = u_xlat0;
  let x_1264 : vec3<f32> = u_xlat1;
  let x_1265 : vec3<f32> = ((vec3<f32>(x_1260.x, x_1260.y, x_1260.z) * x_1262) + x_1264);
  let x_1266 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1266.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

