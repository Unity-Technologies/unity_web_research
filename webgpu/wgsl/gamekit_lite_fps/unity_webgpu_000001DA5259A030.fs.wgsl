struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat48 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> u_xlat49 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> u_xlatb49 : bool;

var<private> u_xlatb50 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat50 : f32;

var<private> u_xlat51 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat52 : f32;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_245 : vec3<f32>;
  var x_425 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_609 : f32;
  var x_621 : f32;
  var x_633 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_786 : f32;
  var x_798 : f32;
  var x_810 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD0.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD1.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD2.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat48;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_72 : vec2<f32> = vs_TEXCOORD3;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_72);
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_78 : vec4<f32> = x_37.x_Color;
  u_xlat3 = (x_74 * x_78);
  let x_81 : vec4<f32> = u_xlat3;
  let x_84 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_81.x, x_81.y, x_81.z) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_93 : vec2<f32> = vs_TEXCOORD3;
  let x_94 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_93);
  let x_95 : vec3<f32> = vec3<f32>(x_94.x, x_94.y, x_94.w);
  let x_96 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : f32 = u_xlat5.z;
  let x_101 : f32 = u_xlat5.x;
  u_xlat5.x = (x_99 * x_101);
  let x_104 : vec4<f32> = u_xlat5;
  let x_111 : vec2<f32> = ((vec2<f32>(x_104.x, x_104.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_112 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat5;
  let x_119 : f32 = x_37.x_BumpScale;
  let x_121 : vec2<f32> = (vec2<f32>(x_114.x, x_114.y) * vec2<f32>(x_119, x_119));
  let x_122 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_121.x, x_121.y, x_122.z, x_122.w);
  let x_125 : vec4<f32> = u_xlat5;
  let x_127 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec2<f32>(x_125.x, x_125.y), vec2<f32>(x_127.x, x_127.y));
  let x_130 : f32 = u_xlat49;
  u_xlat49 = min(x_130, 1.0f);
  let x_133 : f32 = u_xlat49;
  u_xlat49 = (-(x_133) + 1.0f);
  let x_136 : f32 = u_xlat49;
  u_xlat5.z = sqrt(x_136);
  let x_139 : vec4<f32> = u_xlat5;
  let x_141 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : f32 = u_xlat49;
  u_xlat49 = inverseSqrt(x_144);
  let x_146 : f32 = u_xlat49;
  let x_148 : vec4<f32> = u_xlat5;
  let x_150 : vec3<f32> = (vec3<f32>(x_146, x_146, x_146) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_159 : vec2<f32> = vs_TEXCOORD3;
  let x_160 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_159);
  u_xlat6 = vec3<f32>(x_160.x, x_160.y, x_160.z);
  let x_163 : f32 = u_xlat3.w;
  let x_165 : f32 = vs_COLOR0.w;
  let x_169 : f32 = x_37.x_Cutoff;
  u_xlat49 = ((x_163 * x_165) + -(x_169));
  let x_172 : f32 = u_xlat49;
  u_xlat49 = (x_172 + 0.0001f);
  let x_178 : f32 = u_xlat49;
  u_xlatb49 = (x_178 < 0.0f);
  let x_181 : bool = u_xlatb49;
  if (((select(0i, 1i, x_181) * -1i) != 0i)) {
    discard;
  }
  let x_192 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_192 == 1.0f);
  let x_194 : bool = u_xlatb49;
  if (x_194) {
    let x_199 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb50 = (x_199 == 1.0f);
    let x_202 : vec4<f32> = vs_TEXCOORD1;
    let x_206 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_208 : vec3<f32> = (vec3<f32>(x_202.w, x_202.w, x_202.w) * vec3<f32>(x_206.x, x_206.y, x_206.z));
    let x_209 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
    let x_212 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_214 : vec4<f32> = vs_TEXCOORD0;
    let x_217 : vec4<f32> = u_xlat7;
    let x_219 : vec3<f32> = ((vec3<f32>(x_212.x, x_212.y, x_212.z) * vec3<f32>(x_214.w, x_214.w, x_214.w)) + vec3<f32>(x_217.x, x_217.y, x_217.z));
    let x_220 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_224 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_226 : vec4<f32> = vs_TEXCOORD2;
    let x_229 : vec4<f32> = u_xlat7;
    let x_231 : vec3<f32> = ((vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226.w, x_226.w, x_226.w)) + vec3<f32>(x_229.x, x_229.y, x_229.z));
    let x_232 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
    let x_234 : vec4<f32> = u_xlat7;
    let x_238 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_240 : vec3<f32> = (vec3<f32>(x_234.x, x_234.y, x_234.z) + vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_241 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_243 : bool = u_xlatb50;
    if (x_243) {
      let x_248 : vec4<f32> = u_xlat7;
      x_245 = vec3<f32>(x_248.x, x_248.y, x_248.z);
    } else {
      let x_251 : vec3<f32> = u_xlat0;
      x_245 = x_251;
    }
    let x_252 : vec3<f32> = x_245;
    let x_253 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat7;
    let x_259 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_261 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + -(x_259));
    let x_262 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_264 : vec4<f32> = u_xlat7;
    let x_268 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_269 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) * x_268);
    let x_270 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
    let x_274 : f32 = u_xlat7.y;
    u_xlat50 = ((x_274 * 0.25f) + 0.75f);
    let x_281 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat51 = ((x_281 * 0.5f) + 0.75f);
    let x_285 : f32 = u_xlat50;
    let x_286 : f32 = u_xlat51;
    u_xlat7.x = max(x_285, x_286);
    let x_297 : vec4<f32> = u_xlat7;
    let x_299 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_297.x, x_297.z, x_297.w));
    u_xlat7 = x_299;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_305 : vec4<f32> = u_xlat7;
  let x_308 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat50 = dot(x_305, x_308);
  let x_310 : f32 = u_xlat50;
  u_xlat50 = clamp(x_310, 0.0f, 1.0f);
  let x_312 : vec4<f32> = vs_TEXCOORD0;
  let x_314 : vec4<f32> = u_xlat5;
  u_xlat7.x = dot(vec3<f32>(x_312.x, x_312.y, x_312.z), vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_318 : vec4<f32> = vs_TEXCOORD1;
  let x_320 : vec4<f32> = u_xlat5;
  u_xlat7.y = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_324 : vec4<f32> = vs_TEXCOORD2;
  let x_326 : vec4<f32> = u_xlat5;
  u_xlat7.z = dot(vec3<f32>(x_324.x, x_324.y, x_324.z), vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_330 : vec4<f32> = u_xlat7;
  let x_332 : vec4<f32> = u_xlat7;
  u_xlat51 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat51;
  let x_339 : vec4<f32> = u_xlat7;
  let x_341 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_346 : f32 = x_37.x_Glossiness;
  u_xlat51 = (-(x_346) + 1.0f);
  let x_350 : vec4<f32> = u_xlat2;
  let x_353 : vec4<f32> = u_xlat5;
  u_xlat52 = dot(-(vec3<f32>(x_350.x, x_350.y, x_350.z)), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : f32 = u_xlat52;
  let x_357 : f32 = u_xlat52;
  u_xlat52 = (x_356 + x_357);
  let x_359 : vec4<f32> = u_xlat5;
  let x_361 : f32 = u_xlat52;
  let x_365 : vec4<f32> = u_xlat2;
  let x_368 : vec3<f32> = ((vec3<f32>(x_359.x, x_359.y, x_359.z) * -(vec3<f32>(x_361, x_361, x_361))) + -(vec3<f32>(x_365.x, x_365.y, x_365.z)));
  let x_369 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_372 : f32 = u_xlat50;
  let x_376 : vec4<f32> = x_37.x_LightColor0;
  u_xlat8 = (vec3<f32>(x_372, x_372, x_372) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : bool = u_xlatb49;
  if (x_379) {
    let x_383 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb49 = (x_383 == 1.0f);
    let x_386 : vec4<f32> = vs_TEXCOORD1;
    let x_389 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_391 : vec3<f32> = (vec3<f32>(x_386.w, x_386.w, x_386.w) * vec3<f32>(x_389.x, x_389.y, x_389.z));
    let x_392 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_395 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_397 : vec4<f32> = vs_TEXCOORD0;
    let x_400 : vec4<f32> = u_xlat9;
    let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.w, x_397.w, x_397.w)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
    let x_403 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
    let x_406 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_408 : vec4<f32> = vs_TEXCOORD2;
    let x_411 : vec4<f32> = u_xlat9;
    let x_413 : vec3<f32> = ((vec3<f32>(x_406.x, x_406.y, x_406.z) * vec3<f32>(x_408.w, x_408.w, x_408.w)) + vec3<f32>(x_411.x, x_411.y, x_411.z));
    let x_414 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
    let x_416 : vec4<f32> = u_xlat9;
    let x_419 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_421 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) + vec3<f32>(x_419.x, x_419.y, x_419.z));
    let x_422 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
    let x_424 : bool = u_xlatb49;
    if (x_424) {
      let x_428 : vec4<f32> = u_xlat9;
      x_425 = vec3<f32>(x_428.x, x_428.y, x_428.z);
    } else {
      let x_431 : vec3<f32> = u_xlat0;
      x_425 = x_431;
    }
    let x_432 : vec3<f32> = x_425;
    let x_433 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
    let x_435 : vec4<f32> = u_xlat9;
    let x_438 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_440 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) + -(x_438));
    let x_441 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
    let x_443 : vec4<f32> = u_xlat9;
    let x_446 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_447 : vec3<f32> = (vec3<f32>(x_443.x, x_443.y, x_443.z) * x_446);
    let x_448 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_448.x, x_447.x, x_447.y, x_447.z);
    let x_451 : f32 = u_xlat9.y;
    u_xlat49 = (x_451 * 0.25f);
    let x_454 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat50 = (x_454 * 0.5f);
    let x_457 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat52 = ((-(x_457) * 0.5f) + 0.25f);
    let x_461 : f32 = u_xlat49;
    let x_462 : f32 = u_xlat50;
    u_xlat49 = max(x_461, x_462);
    let x_464 : f32 = u_xlat52;
    let x_465 : f32 = u_xlat49;
    u_xlat9.x = min(x_464, x_465);
    let x_472 : vec4<f32> = u_xlat9;
    let x_474 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_472.x, x_472.z, x_472.w));
    u_xlat10 = x_474;
    let x_476 : vec4<f32> = u_xlat9;
    let x_479 : vec3<f32> = (vec3<f32>(x_476.x, x_476.z, x_476.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_480 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
    let x_485 : vec4<f32> = u_xlat11;
    let x_487 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_485.x, x_485.y, x_485.z));
    u_xlat11 = x_487;
    let x_488 : vec4<f32> = u_xlat9;
    let x_491 : vec3<f32> = (vec3<f32>(x_488.x, x_488.z, x_488.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_492 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
    let x_497 : vec4<f32> = u_xlat9;
    let x_499 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_497.x, x_497.y, x_497.z));
    u_xlat9 = x_499;
    u_xlat5.w = 1.0f;
    let x_501 : vec4<f32> = u_xlat10;
    let x_502 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_501, x_502);
    let x_505 : vec4<f32> = u_xlat11;
    let x_506 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_505, x_506);
    let x_509 : vec4<f32> = u_xlat9;
    let x_510 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_509, x_510);
  } else {
    u_xlat5.w = 1.0f;
    let x_516 : vec4<f32> = x_37.unity_SHAr;
    let x_517 : vec4<f32> = u_xlat5;
    u_xlat10.x = dot(x_516, x_517);
    let x_521 : vec4<f32> = x_37.unity_SHAg;
    let x_522 : vec4<f32> = u_xlat5;
    u_xlat10.y = dot(x_521, x_522);
    let x_527 : vec4<f32> = x_37.unity_SHAb;
    let x_528 : vec4<f32> = u_xlat5;
    u_xlat10.z = dot(x_527, x_528);
  }
  let x_531 : vec4<f32> = u_xlat10;
  let x_535 : vec3<f32> = vs_TEXCOORD5;
  let x_536 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) + x_535);
  let x_537 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_539 : vec4<f32> = u_xlat9;
  let x_542 : vec3<f32> = max(vec3<f32>(x_539.x, x_539.y, x_539.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_543 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
  let x_547 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_547);
  let x_549 : bool = u_xlatb49;
  if (x_549) {
    let x_552 : vec4<f32> = u_xlat7;
    let x_554 : vec4<f32> = u_xlat7;
    u_xlat49 = dot(vec3<f32>(x_552.x, x_552.y, x_552.z), vec3<f32>(x_554.x, x_554.y, x_554.z));
    let x_557 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_557);
    let x_559 : f32 = u_xlat49;
    let x_561 : vec4<f32> = u_xlat7;
    let x_563 : vec3<f32> = (vec3<f32>(x_559, x_559, x_559) * vec3<f32>(x_561.x, x_561.y, x_561.z));
    let x_564 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
    let x_566 : vec3<f32> = u_xlat0;
    let x_570 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_572 : vec3<f32> = (-(x_566) + vec3<f32>(x_570.x, x_570.y, x_570.z));
    let x_573 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
    let x_575 : vec4<f32> = u_xlat11;
    let x_577 : vec4<f32> = u_xlat10;
    let x_579 : vec3<f32> = (vec3<f32>(x_575.x, x_575.y, x_575.z) / vec3<f32>(x_577.x, x_577.y, x_577.z));
    let x_580 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_583 : vec3<f32> = u_xlat0;
    let x_587 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(x_583) + vec3<f32>(x_587.x, x_587.y, x_587.z));
    let x_590 : vec3<f32> = u_xlat12;
    let x_591 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_590 / vec3<f32>(x_591.x, x_591.y, x_591.z));
    let x_598 : vec4<f32> = u_xlat10;
    let x_601 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_598.x, x_598.y, x_598.z, x_598.x));
    u_xlatb13 = vec3<bool>(x_601.x, x_601.y, x_601.z);
    let x_605 : vec4<f32> = u_xlat11;
    hlslcc_movcTemp = x_605;
    let x_607 : bool = u_xlatb13.x;
    if (x_607) {
      let x_613 : f32 = u_xlat11.x;
      x_609 = x_613;
    } else {
      let x_616 : f32 = u_xlat12.x;
      x_609 = x_616;
    }
    let x_617 : f32 = x_609;
    hlslcc_movcTemp.x = x_617;
    let x_620 : bool = u_xlatb13.y;
    if (x_620) {
      let x_625 : f32 = u_xlat11.y;
      x_621 = x_625;
    } else {
      let x_628 : f32 = u_xlat12.y;
      x_621 = x_628;
    }
    let x_629 : f32 = x_621;
    hlslcc_movcTemp.y = x_629;
    let x_632 : bool = u_xlatb13.z;
    if (x_632) {
      let x_637 : f32 = u_xlat11.z;
      x_633 = x_637;
    } else {
      let x_640 : f32 = u_xlat12.z;
      x_633 = x_640;
    }
    let x_641 : f32 = x_633;
    hlslcc_movcTemp.z = x_641;
    let x_643 : vec4<f32> = hlslcc_movcTemp;
    u_xlat11 = x_643;
    let x_645 : f32 = u_xlat11.y;
    let x_647 : f32 = u_xlat11.x;
    u_xlat49 = min(x_645, x_647);
    let x_650 : f32 = u_xlat11.z;
    let x_651 : f32 = u_xlat49;
    u_xlat49 = min(x_650, x_651);
    let x_653 : vec3<f32> = u_xlat0;
    let x_655 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_658 : vec3<f32> = (x_653 + -(vec3<f32>(x_655.x, x_655.y, x_655.z)));
    let x_659 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
    let x_661 : vec4<f32> = u_xlat10;
    let x_663 : f32 = u_xlat49;
    let x_666 : vec4<f32> = u_xlat11;
    let x_668 : vec3<f32> = ((vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(x_663, x_663, x_663)) + vec3<f32>(x_666.x, x_666.y, x_666.z));
    let x_669 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  } else {
    let x_672 : vec4<f32> = u_xlat7;
    let x_673 : vec3<f32> = vec3<f32>(x_672.x, x_672.y, x_672.z);
    let x_674 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  }
  let x_676 : f32 = u_xlat51;
  u_xlat49 = ((-(x_676) * 0.699999988f) + 1.700000048f);
  let x_682 : f32 = u_xlat49;
  let x_683 : f32 = u_xlat51;
  u_xlat49 = (x_682 * x_683);
  let x_685 : f32 = u_xlat49;
  u_xlat49 = (x_685 * 6.0f);
  let x_696 : vec4<f32> = u_xlat10;
  let x_698 : f32 = u_xlat49;
  let x_699 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_696.x, x_696.y, x_696.z), x_698);
  u_xlat10 = x_699;
  let x_701 : f32 = u_xlat10.w;
  u_xlat50 = (x_701 + -1.0f);
  let x_705 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_706 : f32 = u_xlat50;
  u_xlat50 = ((x_705 * x_706) + 1.0f);
  let x_709 : f32 = u_xlat50;
  u_xlat50 = log2(x_709);
  let x_711 : f32 = u_xlat50;
  let x_713 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat50 = (x_711 * x_713);
  let x_715 : f32 = u_xlat50;
  u_xlat50 = exp2(x_715);
  let x_717 : f32 = u_xlat50;
  let x_719 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat50 = (x_717 * x_719);
  let x_721 : vec4<f32> = u_xlat10;
  let x_723 : f32 = u_xlat50;
  let x_725 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723, x_723, x_723));
  let x_726 : vec4<f32> = u_xlat11;
  u_xlat11 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_730 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_730 < 0.999989986f);
  let x_733 : bool = u_xlatb52;
  if (x_733) {
    let x_738 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_738);
    let x_740 : bool = u_xlatb52;
    if (x_740) {
      let x_743 : vec4<f32> = u_xlat7;
      let x_745 : vec4<f32> = u_xlat7;
      u_xlat52 = dot(vec3<f32>(x_743.x, x_743.y, x_743.z), vec3<f32>(x_745.x, x_745.y, x_745.z));
      let x_748 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_748);
      let x_750 : f32 = u_xlat52;
      let x_752 : vec4<f32> = u_xlat7;
      u_xlat12 = (vec3<f32>(x_750, x_750, x_750) * vec3<f32>(x_752.x, x_752.y, x_752.z));
      let x_756 : vec3<f32> = u_xlat0;
      let x_760 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(x_756) + vec3<f32>(x_760.x, x_760.y, x_760.z));
      let x_763 : vec3<f32> = u_xlat13;
      let x_764 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_763 / x_764);
      let x_767 : vec3<f32> = u_xlat0;
      let x_771 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(x_767) + vec3<f32>(x_771.x, x_771.y, x_771.z));
      let x_774 : vec3<f32> = u_xlat14;
      let x_775 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_774 / x_775);
      let x_778 : vec3<f32> = u_xlat12;
      let x_780 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_778.x, x_778.y, x_778.z, x_778.x));
      u_xlatb15 = vec3<bool>(x_780.x, x_780.y, x_780.z);
      let x_783 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_783;
      let x_785 : bool = u_xlatb15.x;
      if (x_785) {
        let x_790 : f32 = u_xlat13.x;
        x_786 = x_790;
      } else {
        let x_793 : f32 = u_xlat14.x;
        x_786 = x_793;
      }
      let x_794 : f32 = x_786;
      hlslcc_movcTemp_1.x = x_794;
      let x_797 : bool = u_xlatb15.y;
      if (x_797) {
        let x_802 : f32 = u_xlat13.y;
        x_798 = x_802;
      } else {
        let x_805 : f32 = u_xlat14.y;
        x_798 = x_805;
      }
      let x_806 : f32 = x_798;
      hlslcc_movcTemp_1.y = x_806;
      let x_809 : bool = u_xlatb15.z;
      if (x_809) {
        let x_814 : f32 = u_xlat13.z;
        x_810 = x_814;
      } else {
        let x_817 : f32 = u_xlat14.z;
        x_810 = x_817;
      }
      let x_818 : f32 = x_810;
      hlslcc_movcTemp_1.z = x_818;
      let x_820 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_820;
      let x_822 : f32 = u_xlat13.y;
      let x_824 : f32 = u_xlat13.x;
      u_xlat52 = min(x_822, x_824);
      let x_827 : f32 = u_xlat13.z;
      let x_828 : f32 = u_xlat52;
      u_xlat52 = min(x_827, x_828);
      let x_830 : vec3<f32> = u_xlat0;
      let x_832 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_830 + -(vec3<f32>(x_832.x, x_832.y, x_832.z)));
      let x_836 : vec3<f32> = u_xlat12;
      let x_837 : f32 = u_xlat52;
      let x_840 : vec3<f32> = u_xlat0;
      let x_841 : vec3<f32> = ((x_836 * vec3<f32>(x_837, x_837, x_837)) + x_840);
      let x_842 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
    }
    let x_848 : vec4<f32> = u_xlat7;
    let x_850 : f32 = u_xlat49;
    let x_851 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_848.x, x_848.y, x_848.z), x_850);
    u_xlat7 = x_851;
    let x_853 : f32 = u_xlat7.w;
    u_xlat0.x = (x_853 + -1.0f);
    let x_858 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_860 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_858 * x_860) + 1.0f);
    let x_865 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_865);
    let x_869 : f32 = u_xlat0.x;
    let x_871 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_869 * x_871);
    let x_875 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_875);
    let x_879 : f32 = u_xlat0.x;
    let x_881 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_879 * x_881);
    let x_884 : vec4<f32> = u_xlat7;
    let x_886 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_884.x, x_884.y, x_884.z) * vec3<f32>(x_886.x, x_886.x, x_886.x));
    let x_889 : f32 = u_xlat50;
    let x_891 : vec4<f32> = u_xlat10;
    let x_894 : vec3<f32> = u_xlat0;
    let x_896 : vec3<f32> = ((vec3<f32>(x_889, x_889, x_889) * vec3<f32>(x_891.x, x_891.y, x_891.z)) + -(x_894));
    let x_897 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
    let x_900 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_902 : vec4<f32> = u_xlat7;
    let x_905 : vec3<f32> = u_xlat0;
    let x_906 : vec3<f32> = ((vec3<f32>(x_900.w, x_900.w, x_900.w) * vec3<f32>(x_902.x, x_902.y, x_902.z)) + x_905);
    let x_907 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  }
  let x_909 : vec4<f32> = u_xlat3;
  let x_911 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_909.x, x_909.y, x_909.z) * vec3<f32>(x_911.x, x_911.y, x_911.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_919 : f32 = x_37.x_Metallic;
  let x_921 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_919, x_919, x_919) * x_921) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_927 : f32 = x_37.x_Metallic;
  u_xlat49 = ((-(x_927) * 0.959999979f) + 0.959999979f);
  let x_932 : f32 = u_xlat49;
  let x_934 : vec3<f32> = u_xlat4;
  let x_935 : vec3<f32> = (vec3<f32>(x_932, x_932, x_932) * x_934);
  let x_936 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec3<f32> = u_xlat1;
  let x_939 : f32 = u_xlat48;
  let x_943 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_938 * vec3<f32>(x_939, x_939, x_939)) + vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_946 : vec3<f32> = u_xlat1;
  let x_947 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_946, x_947);
  let x_949 : f32 = u_xlat48;
  u_xlat48 = max(x_949, 0.001f);
  let x_952 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_952);
  let x_954 : f32 = u_xlat48;
  let x_956 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_954, x_954, x_954) * x_956);
  let x_958 : vec4<f32> = u_xlat5;
  let x_960 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_958.x, x_958.y, x_958.z), vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec4<f32> = u_xlat5;
  let x_966 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_963.x, x_963.y, x_963.z), vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_971 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_971, 0.0f, 1.0f);
  let x_975 : vec4<f32> = u_xlat5;
  let x_977 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_975.x, x_975.y, x_975.z), x_977);
  let x_979 : f32 = u_xlat18;
  u_xlat18 = clamp(x_979, 0.0f, 1.0f);
  let x_982 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_984 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_982.x, x_982.y, x_982.z), x_984);
  let x_988 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_988, 0.0f, 1.0f);
  let x_993 : f32 = u_xlat1.x;
  let x_995 : f32 = u_xlat1.x;
  u_xlat17 = (x_993 * x_995);
  let x_997 : f32 = u_xlat17;
  let x_999 : f32 = u_xlat51;
  u_xlat17 = dot(vec2<f32>(x_997, x_997), vec2<f32>(x_999, x_999));
  let x_1002 : f32 = u_xlat17;
  u_xlat17 = (x_1002 + -0.5f);
  let x_1007 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_1007) + 1.0f);
  let x_1011 : f32 = u_xlat33;
  let x_1012 : f32 = u_xlat33;
  u_xlat34 = (x_1011 * x_1012);
  let x_1014 : f32 = u_xlat34;
  let x_1015 : f32 = u_xlat34;
  u_xlat34 = (x_1014 * x_1015);
  let x_1017 : f32 = u_xlat33;
  let x_1018 : f32 = u_xlat34;
  u_xlat33 = (x_1017 * x_1018);
  let x_1020 : f32 = u_xlat17;
  let x_1021 : f32 = u_xlat33;
  u_xlat33 = ((x_1020 * x_1021) + 1.0f);
  let x_1024 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_1024)) + 1.0f);
  let x_1028 : f32 = u_xlat34;
  let x_1029 : f32 = u_xlat34;
  u_xlat50 = (x_1028 * x_1029);
  let x_1031 : f32 = u_xlat50;
  let x_1032 : f32 = u_xlat50;
  u_xlat50 = (x_1031 * x_1032);
  let x_1034 : f32 = u_xlat34;
  let x_1035 : f32 = u_xlat50;
  u_xlat34 = (x_1034 * x_1035);
  let x_1037 : f32 = u_xlat17;
  let x_1038 : f32 = u_xlat34;
  u_xlat17 = ((x_1037 * x_1038) + 1.0f);
  let x_1041 : f32 = u_xlat17;
  let x_1042 : f32 = u_xlat33;
  u_xlat17 = (x_1041 * x_1042);
  let x_1045 : f32 = u_xlat2.x;
  let x_1046 : f32 = u_xlat17;
  u_xlat17 = (x_1045 * x_1046);
  let x_1048 : f32 = u_xlat51;
  let x_1049 : f32 = u_xlat51;
  u_xlat33 = (x_1048 * x_1049);
  let x_1051 : f32 = u_xlat33;
  u_xlat33 = max(x_1051, 0.002f);
  let x_1054 : f32 = u_xlat33;
  u_xlat50 = (-(x_1054) + 1.0f);
  let x_1057 : f32 = u_xlat48;
  let x_1059 : f32 = u_xlat50;
  let x_1061 : f32 = u_xlat33;
  u_xlat51 = ((abs(x_1057) * x_1059) + x_1061);
  let x_1064 : f32 = u_xlat2.x;
  let x_1065 : f32 = u_xlat50;
  let x_1067 : f32 = u_xlat33;
  u_xlat50 = ((x_1064 * x_1065) + x_1067);
  let x_1069 : f32 = u_xlat48;
  let x_1071 : f32 = u_xlat50;
  u_xlat48 = (abs(x_1069) * x_1071);
  let x_1074 : f32 = u_xlat2.x;
  let x_1075 : f32 = u_xlat51;
  let x_1077 : f32 = u_xlat48;
  u_xlat48 = ((x_1074 * x_1075) + x_1077);
  let x_1079 : f32 = u_xlat48;
  u_xlat48 = (x_1079 + 0.00001f);
  let x_1082 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1082);
  let x_1084 : f32 = u_xlat33;
  let x_1085 : f32 = u_xlat33;
  u_xlat50 = (x_1084 * x_1085);
  let x_1087 : f32 = u_xlat18;
  let x_1088 : f32 = u_xlat50;
  let x_1090 : f32 = u_xlat18;
  u_xlat51 = ((x_1087 * x_1088) + -(x_1090));
  let x_1093 : f32 = u_xlat51;
  let x_1094 : f32 = u_xlat18;
  u_xlat18 = ((x_1093 * x_1094) + 1.0f);
  let x_1097 : f32 = u_xlat50;
  u_xlat50 = (x_1097 * 0.318309873f);
  let x_1100 : f32 = u_xlat18;
  let x_1101 : f32 = u_xlat18;
  u_xlat18 = ((x_1100 * x_1101) + 0.0000001f);
  let x_1105 : f32 = u_xlat50;
  let x_1106 : f32 = u_xlat18;
  u_xlat18 = (x_1105 / x_1106);
  let x_1108 : f32 = u_xlat48;
  let x_1109 : f32 = u_xlat18;
  u_xlat48 = (x_1108 * x_1109);
  let x_1112 : f32 = u_xlat2.x;
  let x_1113 : f32 = u_xlat48;
  u_xlat48 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat48;
  u_xlat48 = (x_1115 * 3.141592741f);
  let x_1118 : f32 = u_xlat48;
  u_xlat48 = max(x_1118, 0.0f);
  let x_1120 : f32 = u_xlat33;
  let x_1121 : f32 = u_xlat33;
  u_xlat33 = ((x_1120 * x_1121) + 1.0f);
  let x_1124 : f32 = u_xlat33;
  u_xlat33 = (1.0f / x_1124);
  let x_1126 : vec3<f32> = u_xlat0;
  let x_1127 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1126, x_1127);
  let x_1132 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1132 == 0.0f));
  let x_1134 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1134);
  let x_1137 : f32 = u_xlat48;
  let x_1139 : f32 = u_xlat2.x;
  u_xlat48 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat49;
  let x_1144 : f32 = x_37.x_Glossiness;
  u_xlat49 = (-(x_1141) + x_1144);
  let x_1146 : f32 = u_xlat49;
  u_xlat49 = (x_1146 + 1.0f);
  let x_1148 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1148, 0.0f, 1.0f);
  let x_1150 : vec3<f32> = u_xlat8;
  let x_1151 : f32 = u_xlat17;
  let x_1154 : vec4<f32> = u_xlat9;
  let x_1156 : vec3<f32> = ((x_1150 * vec3<f32>(x_1151, x_1151, x_1151)) + vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1156.x, x_1156.y, x_1157.z, x_1156.z);
  let x_1159 : vec3<f32> = u_xlat8;
  let x_1160 : f32 = u_xlat48;
  u_xlat4 = (x_1159 * vec3<f32>(x_1160, x_1160, x_1160));
  let x_1164 : f32 = u_xlat1.x;
  u_xlat48 = (-(x_1164) + 1.0f);
  let x_1167 : f32 = u_xlat48;
  let x_1168 : f32 = u_xlat48;
  u_xlat1.x = (x_1167 * x_1168);
  let x_1172 : f32 = u_xlat1.x;
  let x_1174 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1172 * x_1174);
  let x_1177 : f32 = u_xlat48;
  let x_1179 : f32 = u_xlat1.x;
  u_xlat48 = (x_1177 * x_1179);
  let x_1181 : vec3<f32> = u_xlat0;
  let x_1184 : vec3<f32> = (-(x_1181) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1185 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
  let x_1187 : vec4<f32> = u_xlat5;
  let x_1189 : f32 = u_xlat48;
  let x_1192 : vec3<f32> = u_xlat0;
  let x_1193 : vec3<f32> = ((vec3<f32>(x_1187.x, x_1187.y, x_1187.z) * vec3<f32>(x_1189, x_1189, x_1189)) + x_1192);
  let x_1194 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : vec3<f32> = u_xlat4;
  let x_1197 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1196 * vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
  let x_1200 : vec4<f32> = u_xlat3;
  let x_1202 : vec4<f32> = u_xlat2;
  let x_1205 : vec3<f32> = u_xlat4;
  let x_1206 : vec3<f32> = ((vec3<f32>(x_1200.x, x_1200.y, x_1200.z) * vec3<f32>(x_1202.x, x_1202.y, x_1202.w)) + x_1205);
  let x_1207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1206.x, x_1206.y, x_1207.z, x_1206.z);
  let x_1209 : vec4<f32> = u_xlat11;
  let x_1211 : f32 = u_xlat33;
  u_xlat1 = (vec3<f32>(x_1209.x, x_1209.y, x_1209.z) * vec3<f32>(x_1211, x_1211, x_1211));
  let x_1214 : vec3<f32> = u_xlat0;
  let x_1216 : f32 = u_xlat49;
  let x_1218 : vec3<f32> = (-(x_1214) + vec3<f32>(x_1216, x_1216, x_1216));
  let x_1219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  let x_1221 : f32 = u_xlat34;
  let x_1223 : vec4<f32> = u_xlat3;
  let x_1226 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1221, x_1221, x_1221) * vec3<f32>(x_1223.x, x_1223.y, x_1223.z)) + x_1226);
  let x_1228 : vec3<f32> = u_xlat1;
  let x_1229 : vec3<f32> = u_xlat0;
  let x_1231 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1228 * x_1229) + vec3<f32>(x_1231.x, x_1231.y, x_1231.w));
  let x_1236 : vec3<f32> = u_xlat6;
  let x_1239 : f32 = x_37.x_EmissionColor.x;
  let x_1241 : f32 = x_37.x_EmissionColor.y;
  let x_1243 : f32 = x_37.x_EmissionColor.z;
  let x_1246 : vec3<f32> = u_xlat0;
  let x_1247 : vec3<f32> = ((x_1236 * vec3<f32>(x_1239, x_1241, x_1243)) + x_1246);
  let x_1248 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

