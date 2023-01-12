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
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat47 : f32;
  var u_xlatb47 : bool;
  var u_xlatb48 : bool;
  var x_261 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat50 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb46 : bool;
  var u_xlat8 : vec4<f32>;
  var x_471 : vec3<f32>;
  var u_xlat51 : f32;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_654 : f32;
  var x_666 : f32;
  var x_678 : f32;
  var u_xlatb50 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_831 : f32;
  var x_843 : f32;
  var x_855 : f32;
  var u_xlat17 : f32;
  var u_xlat16 : f32;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var u_xlatb2 : bool;
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
  u_xlat45 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat45;
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
  let x_83 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (x_81 * x_83);
  let x_91 : vec2<f32> = vs_TEXCOORD3;
  let x_92 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_91);
  let x_93 : vec3<f32> = vec3<f32>(x_92.x, x_92.y, x_92.w);
  let x_94 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : f32 = u_xlat5.z;
  let x_99 : f32 = u_xlat5.x;
  u_xlat5.x = (x_97 * x_99);
  let x_102 : vec4<f32> = u_xlat5;
  let x_109 : vec2<f32> = ((vec2<f32>(x_102.x, x_102.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_110 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_110.w);
  let x_112 : vec4<f32> = u_xlat5;
  let x_117 : f32 = x_37.x_BumpScale;
  let x_119 : vec2<f32> = (vec2<f32>(x_112.x, x_112.y) * vec2<f32>(x_117, x_117));
  let x_120 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_123 : vec4<f32> = u_xlat5;
  let x_125 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec2<f32>(x_123.x, x_123.y), vec2<f32>(x_125.x, x_125.y));
  let x_128 : f32 = u_xlat46;
  u_xlat46 = min(x_128, 1.0f);
  let x_131 : f32 = u_xlat46;
  u_xlat46 = (-(x_131) + 1.0f);
  let x_134 : f32 = u_xlat46;
  u_xlat5.z = sqrt(x_134);
  let x_137 : vec4<f32> = u_xlat5;
  let x_139 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : f32 = u_xlat46;
  u_xlat46 = inverseSqrt(x_142);
  let x_144 : f32 = u_xlat46;
  let x_146 : vec4<f32> = u_xlat5;
  let x_148 : vec3<f32> = (vec3<f32>(x_144, x_144, x_144) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_154 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_154;
  let x_158 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_158;
  let x_162 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_162;
  let x_164 : vec3<f32> = u_xlat1;
  let x_165 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(x_164, vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec3<f32> = u_xlat0;
  let x_171 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_174 : vec3<f32> = (x_168 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec4<f32> = u_xlat6;
  let x_180 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : f32 = u_xlat47;
  u_xlat47 = sqrt(x_183);
  let x_185 : f32 = u_xlat46;
  let x_187 : f32 = u_xlat47;
  u_xlat47 = (-(x_185) + x_187);
  let x_190 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_191 : f32 = u_xlat47;
  let x_193 : f32 = u_xlat46;
  u_xlat46 = ((x_190 * x_191) + x_193);
  let x_195 : f32 = u_xlat46;
  let x_198 : f32 = x_37.x_LightShadowData.z;
  let x_201 : f32 = x_37.x_LightShadowData.w;
  u_xlat46 = ((x_195 * x_198) + x_201);
  let x_203 : f32 = u_xlat46;
  u_xlat46 = clamp(x_203, 0.0f, 1.0f);
  let x_211 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb47 = (x_211 == 1.0f);
  let x_213 : bool = u_xlatb47;
  if (x_213) {
    let x_218 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_218 == 1.0f);
    let x_220 : vec4<f32> = vs_TEXCOORD1;
    let x_224 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_226 : vec3<f32> = (vec3<f32>(x_220.w, x_220.w, x_220.w) * vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_230 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_232 : vec4<f32> = vs_TEXCOORD0;
    let x_235 : vec4<f32> = u_xlat6;
    let x_237 : vec3<f32> = ((vec3<f32>(x_230.x, x_230.y, x_230.z) * vec3<f32>(x_232.w, x_232.w, x_232.w)) + vec3<f32>(x_235.x, x_235.y, x_235.z));
    let x_238 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_241 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_243 : vec4<f32> = vs_TEXCOORD2;
    let x_246 : vec4<f32> = u_xlat6;
    let x_248 : vec3<f32> = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(x_243.w, x_243.w, x_243.w)) + vec3<f32>(x_246.x, x_246.y, x_246.z));
    let x_249 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
    let x_251 : vec4<f32> = u_xlat6;
    let x_255 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_257 : vec3<f32> = (vec3<f32>(x_251.x, x_251.y, x_251.z) + vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_260 : bool = u_xlatb48;
    if (x_260) {
      let x_264 : vec4<f32> = u_xlat6;
      x_261 = vec3<f32>(x_264.x, x_264.y, x_264.z);
    } else {
      let x_267 : vec3<f32> = u_xlat0;
      x_261 = x_267;
    }
    let x_268 : vec3<f32> = x_261;
    let x_269 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat6;
    let x_275 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_277 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) + -(x_275));
    let x_278 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat6;
    let x_284 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) * x_284);
    let x_286 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_286.x, x_285.x, x_285.y, x_285.z);
    let x_290 : f32 = u_xlat6.y;
    u_xlat48 = ((x_290 * 0.25f) + 0.75f);
    let x_297 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat50 = ((x_297 * 0.5f) + 0.75f);
    let x_301 : f32 = u_xlat48;
    let x_302 : f32 = u_xlat50;
    u_xlat6.x = max(x_301, x_302);
    let x_313 : vec4<f32> = u_xlat6;
    let x_315 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_313.x, x_313.z, x_313.w));
    u_xlat6 = x_315;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_321 : vec4<f32> = u_xlat6;
  let x_324 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat48 = dot(x_321, x_324);
  let x_326 : f32 = u_xlat48;
  u_xlat48 = clamp(x_326, 0.0f, 1.0f);
  let x_329 : vec4<f32> = vs_TEXCOORD6;
  let x_331 : vec4<f32> = vs_TEXCOORD6;
  let x_333 : vec2<f32> = (vec2<f32>(x_329.x, x_329.y) / vec2<f32>(x_331.w, x_331.w));
  let x_334 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_333.x, x_333.y, x_334.z, x_334.w);
  let x_341 : vec4<f32> = u_xlat6;
  let x_343 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_341.x, x_341.y));
  u_xlat50 = x_343.x;
  let x_345 : f32 = u_xlat48;
  let x_346 : f32 = u_xlat50;
  u_xlat48 = (x_345 + -(x_346));
  let x_349 : f32 = u_xlat46;
  let x_350 : f32 = u_xlat48;
  let x_352 : f32 = u_xlat50;
  u_xlat46 = ((x_349 * x_350) + x_352);
  let x_354 : vec4<f32> = vs_TEXCOORD0;
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_354.x, x_354.y, x_354.z), vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_360 : vec4<f32> = vs_TEXCOORD1;
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_366 : vec4<f32> = vs_TEXCOORD2;
  let x_368 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_366.x, x_366.y, x_366.z), vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_372 : vec4<f32> = u_xlat6;
  let x_374 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_372.x, x_372.y, x_372.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_377);
  let x_379 : f32 = u_xlat48;
  let x_381 : vec4<f32> = u_xlat6;
  let x_383 : vec3<f32> = (vec3<f32>(x_379, x_379, x_379) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_388 : f32 = x_37.x_Glossiness;
  u_xlat48 = (-(x_388) + 1.0f);
  let x_391 : vec4<f32> = u_xlat2;
  let x_394 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(-(vec3<f32>(x_391.x, x_391.y, x_391.z)), vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_399 : f32 = u_xlat6.x;
  let x_401 : f32 = u_xlat6.x;
  u_xlat6.x = (x_399 + x_401);
  let x_404 : vec4<f32> = u_xlat5;
  let x_406 : vec4<f32> = u_xlat6;
  let x_410 : vec4<f32> = u_xlat2;
  let x_413 : vec3<f32> = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * -(vec3<f32>(x_406.x, x_406.x, x_406.x))) + -(vec3<f32>(x_410.x, x_410.y, x_410.z)));
  let x_414 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : f32 = u_xlat46;
  let x_421 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_417, x_417, x_417) * vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : bool = u_xlatb47;
  if (x_424) {
    let x_429 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_429 == 1.0f);
    let x_432 : vec4<f32> = vs_TEXCOORD1;
    let x_435 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_437 : vec3<f32> = (vec3<f32>(x_432.w, x_432.w, x_432.w) * vec3<f32>(x_435.x, x_435.y, x_435.z));
    let x_438 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
    let x_441 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_443 : vec4<f32> = vs_TEXCOORD0;
    let x_446 : vec4<f32> = u_xlat8;
    let x_448 : vec3<f32> = ((vec3<f32>(x_441.x, x_441.y, x_441.z) * vec3<f32>(x_443.w, x_443.w, x_443.w)) + vec3<f32>(x_446.x, x_446.y, x_446.z));
    let x_449 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
    let x_452 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_454 : vec4<f32> = vs_TEXCOORD2;
    let x_457 : vec4<f32> = u_xlat8;
    let x_459 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_454.w, x_454.w, x_454.w)) + vec3<f32>(x_457.x, x_457.y, x_457.z));
    let x_460 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : vec4<f32> = u_xlat8;
    let x_465 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_467 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + vec3<f32>(x_465.x, x_465.y, x_465.z));
    let x_468 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
    let x_470 : bool = u_xlatb46;
    if (x_470) {
      let x_474 : vec4<f32> = u_xlat8;
      x_471 = vec3<f32>(x_474.x, x_474.y, x_474.z);
    } else {
      let x_477 : vec3<f32> = u_xlat0;
      x_471 = x_477;
    }
    let x_478 : vec3<f32> = x_471;
    let x_479 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
    let x_481 : vec4<f32> = u_xlat8;
    let x_484 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_486 : vec3<f32> = (vec3<f32>(x_481.x, x_481.y, x_481.z) + -(x_484));
    let x_487 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
    let x_489 : vec4<f32> = u_xlat8;
    let x_492 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_493 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * x_492);
    let x_494 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_494.x, x_493.x, x_493.y, x_493.z);
    let x_497 : f32 = u_xlat8.y;
    u_xlat46 = (x_497 * 0.25f);
    let x_500 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat47 = (x_500 * 0.5f);
    let x_504 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat51 = ((-(x_504) * 0.5f) + 0.25f);
    let x_508 : f32 = u_xlat46;
    let x_509 : f32 = u_xlat47;
    u_xlat46 = max(x_508, x_509);
    let x_511 : f32 = u_xlat51;
    let x_512 : f32 = u_xlat46;
    u_xlat8.x = min(x_511, x_512);
    let x_519 : vec4<f32> = u_xlat8;
    let x_521 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_519.x, x_519.z, x_519.w));
    u_xlat9 = x_521;
    let x_523 : vec4<f32> = u_xlat8;
    let x_526 : vec3<f32> = (vec3<f32>(x_523.x, x_523.z, x_523.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_527 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
    let x_532 : vec4<f32> = u_xlat10;
    let x_534 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_532.x, x_532.y, x_532.z));
    u_xlat10 = x_534;
    let x_535 : vec4<f32> = u_xlat8;
    let x_538 : vec3<f32> = (vec3<f32>(x_535.x, x_535.z, x_535.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_539 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
    let x_544 : vec4<f32> = u_xlat8;
    let x_546 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_544.x, x_544.y, x_544.z));
    u_xlat8 = x_546;
    u_xlat5.w = 1.0f;
    let x_548 : vec4<f32> = u_xlat9;
    let x_549 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_548, x_549);
    let x_552 : vec4<f32> = u_xlat10;
    let x_553 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_552, x_553);
    let x_556 : vec4<f32> = u_xlat8;
    let x_557 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_556, x_557);
  } else {
    u_xlat5.w = 1.0f;
    let x_563 : vec4<f32> = x_37.unity_SHAr;
    let x_564 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_563, x_564);
    let x_568 : vec4<f32> = x_37.unity_SHAg;
    let x_569 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_568, x_569);
    let x_574 : vec4<f32> = x_37.unity_SHAb;
    let x_575 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_574, x_575);
  }
  let x_578 : vec4<f32> = u_xlat9;
  let x_582 : vec3<f32> = vs_TEXCOORD4;
  let x_583 : vec3<f32> = (vec3<f32>(x_578.x, x_578.y, x_578.z) + x_582);
  let x_584 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat8;
  let x_589 : vec3<f32> = max(vec3<f32>(x_586.x, x_586.y, x_586.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_590 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_594 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb46 = (0.0f < x_594);
  let x_596 : bool = u_xlatb46;
  if (x_596) {
    let x_599 : vec4<f32> = u_xlat6;
    let x_601 : vec4<f32> = u_xlat6;
    u_xlat46 = dot(vec3<f32>(x_599.x, x_599.y, x_599.z), vec3<f32>(x_601.x, x_601.y, x_601.z));
    let x_604 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_604);
    let x_606 : f32 = u_xlat46;
    let x_608 : vec4<f32> = u_xlat6;
    let x_610 : vec3<f32> = (vec3<f32>(x_606, x_606, x_606) * vec3<f32>(x_608.x, x_608.y, x_608.z));
    let x_611 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
    let x_613 : vec3<f32> = u_xlat0;
    let x_617 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_619 : vec3<f32> = (-(x_613) + vec3<f32>(x_617.x, x_617.y, x_617.z));
    let x_620 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_619.x, x_619.y, x_619.z, x_620.w);
    let x_622 : vec4<f32> = u_xlat10;
    let x_624 : vec4<f32> = u_xlat9;
    let x_626 : vec3<f32> = (vec3<f32>(x_622.x, x_622.y, x_622.z) / vec3<f32>(x_624.x, x_624.y, x_624.z));
    let x_627 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
    let x_630 : vec3<f32> = u_xlat0;
    let x_634 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_630) + vec3<f32>(x_634.x, x_634.y, x_634.z));
    let x_637 : vec3<f32> = u_xlat11;
    let x_638 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_637 / vec3<f32>(x_638.x, x_638.y, x_638.z));
    let x_645 : vec4<f32> = u_xlat9;
    let x_648 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_645.x, x_645.y, x_645.z, x_645.x));
    u_xlatb12 = vec3<bool>(x_648.x, x_648.y, x_648.z);
    let x_651 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_651;
    let x_653 : bool = u_xlatb12.x;
    if (x_653) {
      let x_658 : f32 = u_xlat10.x;
      x_654 = x_658;
    } else {
      let x_661 : f32 = u_xlat11.x;
      x_654 = x_661;
    }
    let x_662 : f32 = x_654;
    hlslcc_movcTemp.x = x_662;
    let x_665 : bool = u_xlatb12.y;
    if (x_665) {
      let x_670 : f32 = u_xlat10.y;
      x_666 = x_670;
    } else {
      let x_673 : f32 = u_xlat11.y;
      x_666 = x_673;
    }
    let x_674 : f32 = x_666;
    hlslcc_movcTemp.y = x_674;
    let x_677 : bool = u_xlatb12.z;
    if (x_677) {
      let x_682 : f32 = u_xlat10.z;
      x_678 = x_682;
    } else {
      let x_685 : f32 = u_xlat11.z;
      x_678 = x_685;
    }
    let x_686 : f32 = x_678;
    hlslcc_movcTemp.z = x_686;
    let x_688 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_688;
    let x_690 : f32 = u_xlat10.y;
    let x_692 : f32 = u_xlat10.x;
    u_xlat46 = min(x_690, x_692);
    let x_695 : f32 = u_xlat10.z;
    let x_696 : f32 = u_xlat46;
    u_xlat46 = min(x_695, x_696);
    let x_698 : vec3<f32> = u_xlat0;
    let x_700 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_703 : vec3<f32> = (x_698 + -(vec3<f32>(x_700.x, x_700.y, x_700.z)));
    let x_704 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
    let x_706 : vec4<f32> = u_xlat9;
    let x_708 : f32 = u_xlat46;
    let x_711 : vec4<f32> = u_xlat10;
    let x_713 : vec3<f32> = ((vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(x_708, x_708, x_708)) + vec3<f32>(x_711.x, x_711.y, x_711.z));
    let x_714 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  } else {
    let x_717 : vec4<f32> = u_xlat6;
    let x_718 : vec3<f32> = vec3<f32>(x_717.x, x_717.y, x_717.z);
    let x_719 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  }
  let x_721 : f32 = u_xlat48;
  u_xlat46 = ((-(x_721) * 0.699999988f) + 1.700000048f);
  let x_727 : f32 = u_xlat46;
  let x_728 : f32 = u_xlat48;
  u_xlat46 = (x_727 * x_728);
  let x_730 : f32 = u_xlat46;
  u_xlat46 = (x_730 * 6.0f);
  let x_741 : vec4<f32> = u_xlat9;
  let x_743 : f32 = u_xlat46;
  let x_744 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_741.x, x_741.y, x_741.z), x_743);
  u_xlat9 = x_744;
  let x_746 : f32 = u_xlat9.w;
  u_xlat47 = (x_746 + -1.0f);
  let x_750 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_751 : f32 = u_xlat47;
  u_xlat47 = ((x_750 * x_751) + 1.0f);
  let x_754 : f32 = u_xlat47;
  u_xlat47 = log2(x_754);
  let x_756 : f32 = u_xlat47;
  let x_758 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_756 * x_758);
  let x_760 : f32 = u_xlat47;
  u_xlat47 = exp2(x_760);
  let x_762 : f32 = u_xlat47;
  let x_764 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_762 * x_764);
  let x_766 : vec4<f32> = u_xlat9;
  let x_768 : f32 = u_xlat47;
  let x_770 : vec3<f32> = (vec3<f32>(x_766.x, x_766.y, x_766.z) * vec3<f32>(x_768, x_768, x_768));
  let x_771 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_775 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb50 = (x_775 < 0.999989986f);
  let x_778 : bool = u_xlatb50;
  if (x_778) {
    let x_783 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb50 = (0.0f < x_783);
    let x_785 : bool = u_xlatb50;
    if (x_785) {
      let x_788 : vec4<f32> = u_xlat6;
      let x_790 : vec4<f32> = u_xlat6;
      u_xlat50 = dot(vec3<f32>(x_788.x, x_788.y, x_788.z), vec3<f32>(x_790.x, x_790.y, x_790.z));
      let x_793 : f32 = u_xlat50;
      u_xlat50 = inverseSqrt(x_793);
      let x_795 : f32 = u_xlat50;
      let x_797 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_795, x_795, x_795) * vec3<f32>(x_797.x, x_797.y, x_797.z));
      let x_801 : vec3<f32> = u_xlat0;
      let x_805 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_801) + vec3<f32>(x_805.x, x_805.y, x_805.z));
      let x_808 : vec3<f32> = u_xlat12;
      let x_809 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_808 / x_809);
      let x_812 : vec3<f32> = u_xlat0;
      let x_816 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_812) + vec3<f32>(x_816.x, x_816.y, x_816.z));
      let x_819 : vec3<f32> = u_xlat13;
      let x_820 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_819 / x_820);
      let x_823 : vec3<f32> = u_xlat11;
      let x_825 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_823.x, x_823.y, x_823.z, x_823.x));
      u_xlatb14 = vec3<bool>(x_825.x, x_825.y, x_825.z);
      let x_828 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_828;
      let x_830 : bool = u_xlatb14.x;
      if (x_830) {
        let x_835 : f32 = u_xlat12.x;
        x_831 = x_835;
      } else {
        let x_838 : f32 = u_xlat13.x;
        x_831 = x_838;
      }
      let x_839 : f32 = x_831;
      hlslcc_movcTemp_1.x = x_839;
      let x_842 : bool = u_xlatb14.y;
      if (x_842) {
        let x_847 : f32 = u_xlat12.y;
        x_843 = x_847;
      } else {
        let x_850 : f32 = u_xlat13.y;
        x_843 = x_850;
      }
      let x_851 : f32 = x_843;
      hlslcc_movcTemp_1.y = x_851;
      let x_854 : bool = u_xlatb14.z;
      if (x_854) {
        let x_859 : f32 = u_xlat12.z;
        x_855 = x_859;
      } else {
        let x_862 : f32 = u_xlat13.z;
        x_855 = x_862;
      }
      let x_863 : f32 = x_855;
      hlslcc_movcTemp_1.z = x_863;
      let x_865 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_865;
      let x_867 : f32 = u_xlat12.y;
      let x_869 : f32 = u_xlat12.x;
      u_xlat50 = min(x_867, x_869);
      let x_872 : f32 = u_xlat12.z;
      let x_873 : f32 = u_xlat50;
      u_xlat50 = min(x_872, x_873);
      let x_875 : vec3<f32> = u_xlat0;
      let x_877 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_875 + -(vec3<f32>(x_877.x, x_877.y, x_877.z)));
      let x_881 : vec3<f32> = u_xlat11;
      let x_882 : f32 = u_xlat50;
      let x_885 : vec3<f32> = u_xlat0;
      let x_886 : vec3<f32> = ((x_881 * vec3<f32>(x_882, x_882, x_882)) + x_885);
      let x_887 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
    }
    let x_893 : vec4<f32> = u_xlat6;
    let x_895 : f32 = u_xlat46;
    let x_896 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_893.x, x_893.y, x_893.z), x_895);
    u_xlat6 = x_896;
    let x_898 : f32 = u_xlat6.w;
    u_xlat0.x = (x_898 + -1.0f);
    let x_903 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_905 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_903 * x_905) + 1.0f);
    let x_910 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_910);
    let x_914 : f32 = u_xlat0.x;
    let x_916 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_914 * x_916);
    let x_920 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_920);
    let x_924 : f32 = u_xlat0.x;
    let x_926 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_924 * x_926);
    let x_929 : vec4<f32> = u_xlat6;
    let x_931 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_929.x, x_929.y, x_929.z) * vec3<f32>(x_931.x, x_931.x, x_931.x));
    let x_934 : f32 = u_xlat47;
    let x_936 : vec4<f32> = u_xlat9;
    let x_939 : vec3<f32> = u_xlat0;
    let x_941 : vec3<f32> = ((vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.x, x_936.y, x_936.z)) + -(x_939));
    let x_942 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
    let x_945 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_947 : vec4<f32> = u_xlat6;
    let x_950 : vec3<f32> = u_xlat0;
    let x_951 : vec3<f32> = ((vec3<f32>(x_945.w, x_945.w, x_945.w) * vec3<f32>(x_947.x, x_947.y, x_947.z)) + x_950);
    let x_952 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  }
  let x_954 : vec4<f32> = u_xlat3;
  let x_956 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_954.x, x_954.y, x_954.z) * vec3<f32>(x_956.x, x_956.y, x_956.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_964 : f32 = x_37.x_Metallic;
  let x_966 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_964, x_964, x_964) * x_966) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_972 : f32 = x_37.x_Metallic;
  u_xlat46 = ((-(x_972) * 0.959999979f) + 0.959999979f);
  let x_977 : f32 = u_xlat46;
  let x_979 : vec4<f32> = u_xlat4;
  let x_981 : vec3<f32> = (vec3<f32>(x_977, x_977, x_977) * vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec3<f32> = u_xlat1;
  let x_985 : f32 = u_xlat45;
  let x_989 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_984 * vec3<f32>(x_985, x_985, x_985)) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec3<f32> = u_xlat1;
  let x_993 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_992, x_993);
  let x_995 : f32 = u_xlat45;
  u_xlat45 = max(x_995, 0.001f);
  let x_998 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_998);
  let x_1000 : f32 = u_xlat45;
  let x_1002 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1000, x_1000, x_1000) * x_1002);
  let x_1004 : vec4<f32> = u_xlat5;
  let x_1006 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(vec3<f32>(x_1004.x, x_1004.y, x_1004.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat5;
  let x_1012 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1009.x, x_1009.y, x_1009.z), vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1017 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1017, 0.0f, 1.0f);
  let x_1021 : vec4<f32> = u_xlat5;
  let x_1023 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), x_1023);
  let x_1025 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1025, 0.0f, 1.0f);
  let x_1028 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1030 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), x_1030);
  let x_1034 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1034, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat1.x;
  let x_1041 : f32 = u_xlat1.x;
  u_xlat16 = (x_1039 * x_1041);
  let x_1043 : f32 = u_xlat16;
  let x_1045 : f32 = u_xlat48;
  u_xlat16 = dot(vec2<f32>(x_1043, x_1043), vec2<f32>(x_1045, x_1045));
  let x_1048 : f32 = u_xlat16;
  u_xlat16 = (x_1048 + -0.5f);
  let x_1053 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_1053) + 1.0f);
  let x_1057 : f32 = u_xlat31;
  let x_1058 : f32 = u_xlat31;
  u_xlat32 = (x_1057 * x_1058);
  let x_1060 : f32 = u_xlat32;
  let x_1061 : f32 = u_xlat32;
  u_xlat32 = (x_1060 * x_1061);
  let x_1063 : f32 = u_xlat31;
  let x_1064 : f32 = u_xlat32;
  u_xlat31 = (x_1063 * x_1064);
  let x_1066 : f32 = u_xlat16;
  let x_1067 : f32 = u_xlat31;
  u_xlat31 = ((x_1066 * x_1067) + 1.0f);
  let x_1070 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_1070)) + 1.0f);
  let x_1074 : f32 = u_xlat32;
  let x_1075 : f32 = u_xlat32;
  u_xlat47 = (x_1074 * x_1075);
  let x_1077 : f32 = u_xlat47;
  let x_1078 : f32 = u_xlat47;
  u_xlat47 = (x_1077 * x_1078);
  let x_1080 : f32 = u_xlat32;
  let x_1081 : f32 = u_xlat47;
  u_xlat32 = (x_1080 * x_1081);
  let x_1083 : f32 = u_xlat16;
  let x_1084 : f32 = u_xlat32;
  u_xlat16 = ((x_1083 * x_1084) + 1.0f);
  let x_1087 : f32 = u_xlat16;
  let x_1088 : f32 = u_xlat31;
  u_xlat16 = (x_1087 * x_1088);
  let x_1091 : f32 = u_xlat2.x;
  let x_1092 : f32 = u_xlat16;
  u_xlat16 = (x_1091 * x_1092);
  let x_1094 : f32 = u_xlat48;
  let x_1095 : f32 = u_xlat48;
  u_xlat31 = (x_1094 * x_1095);
  let x_1097 : f32 = u_xlat31;
  u_xlat31 = max(x_1097, 0.002f);
  let x_1100 : f32 = u_xlat31;
  u_xlat47 = (-(x_1100) + 1.0f);
  let x_1103 : f32 = u_xlat45;
  let x_1105 : f32 = u_xlat47;
  let x_1107 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_1103) * x_1105) + x_1107);
  let x_1110 : f32 = u_xlat2.x;
  let x_1111 : f32 = u_xlat47;
  let x_1113 : f32 = u_xlat31;
  u_xlat47 = ((x_1110 * x_1111) + x_1113);
  let x_1115 : f32 = u_xlat45;
  let x_1117 : f32 = u_xlat47;
  u_xlat45 = (abs(x_1115) * x_1117);
  let x_1120 : f32 = u_xlat2.x;
  let x_1121 : f32 = u_xlat48;
  let x_1123 : f32 = u_xlat45;
  u_xlat45 = ((x_1120 * x_1121) + x_1123);
  let x_1125 : f32 = u_xlat45;
  u_xlat45 = (x_1125 + 0.00001f);
  let x_1128 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1128);
  let x_1130 : f32 = u_xlat31;
  let x_1131 : f32 = u_xlat31;
  u_xlat47 = (x_1130 * x_1131);
  let x_1133 : f32 = u_xlat17;
  let x_1134 : f32 = u_xlat47;
  let x_1136 : f32 = u_xlat17;
  u_xlat48 = ((x_1133 * x_1134) + -(x_1136));
  let x_1139 : f32 = u_xlat48;
  let x_1140 : f32 = u_xlat17;
  u_xlat17 = ((x_1139 * x_1140) + 1.0f);
  let x_1143 : f32 = u_xlat47;
  u_xlat47 = (x_1143 * 0.318309873f);
  let x_1146 : f32 = u_xlat17;
  let x_1147 : f32 = u_xlat17;
  u_xlat17 = ((x_1146 * x_1147) + 0.0000001f);
  let x_1151 : f32 = u_xlat47;
  let x_1152 : f32 = u_xlat17;
  u_xlat17 = (x_1151 / x_1152);
  let x_1154 : f32 = u_xlat45;
  let x_1155 : f32 = u_xlat17;
  u_xlat45 = (x_1154 * x_1155);
  let x_1158 : f32 = u_xlat2.x;
  let x_1159 : f32 = u_xlat45;
  u_xlat45 = (x_1158 * x_1159);
  let x_1161 : f32 = u_xlat45;
  u_xlat45 = (x_1161 * 3.141592741f);
  let x_1164 : f32 = u_xlat45;
  u_xlat45 = max(x_1164, 0.0f);
  let x_1166 : f32 = u_xlat31;
  let x_1167 : f32 = u_xlat31;
  u_xlat31 = ((x_1166 * x_1167) + 1.0f);
  let x_1170 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_1170);
  let x_1172 : vec3<f32> = u_xlat0;
  let x_1173 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1172, x_1173);
  let x_1178 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1178 == 0.0f));
  let x_1180 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1180);
  let x_1183 : f32 = u_xlat45;
  let x_1185 : f32 = u_xlat2.x;
  u_xlat45 = (x_1183 * x_1185);
  let x_1187 : f32 = u_xlat46;
  let x_1190 : f32 = x_37.x_Glossiness;
  u_xlat46 = (-(x_1187) + x_1190);
  let x_1192 : f32 = u_xlat46;
  u_xlat46 = (x_1192 + 1.0f);
  let x_1194 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1194, 0.0f, 1.0f);
  let x_1196 : vec3<f32> = u_xlat7;
  let x_1197 : f32 = u_xlat16;
  let x_1200 : vec4<f32> = u_xlat8;
  let x_1202 : vec3<f32> = ((x_1196 * vec3<f32>(x_1197, x_1197, x_1197)) + vec3<f32>(x_1200.x, x_1200.y, x_1200.z));
  let x_1203 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1202.x, x_1202.y, x_1203.z, x_1202.z);
  let x_1205 : vec3<f32> = u_xlat7;
  let x_1206 : f32 = u_xlat45;
  let x_1208 : vec3<f32> = (x_1205 * vec3<f32>(x_1206, x_1206, x_1206));
  let x_1209 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1212 : f32 = u_xlat1.x;
  u_xlat45 = (-(x_1212) + 1.0f);
  let x_1215 : f32 = u_xlat45;
  let x_1216 : f32 = u_xlat45;
  u_xlat1.x = (x_1215 * x_1216);
  let x_1220 : f32 = u_xlat1.x;
  let x_1222 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1220 * x_1222);
  let x_1225 : f32 = u_xlat45;
  let x_1227 : f32 = u_xlat1.x;
  u_xlat45 = (x_1225 * x_1227);
  let x_1229 : vec3<f32> = u_xlat0;
  let x_1232 : vec3<f32> = (-(x_1229) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1233 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1235 : vec4<f32> = u_xlat5;
  let x_1237 : f32 = u_xlat45;
  let x_1240 : vec3<f32> = u_xlat0;
  let x_1241 : vec3<f32> = ((vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(x_1237, x_1237, x_1237)) + x_1240);
  let x_1242 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec4<f32> = u_xlat4;
  let x_1246 : vec4<f32> = u_xlat5;
  let x_1248 : vec3<f32> = (vec3<f32>(x_1244.x, x_1244.y, x_1244.z) * vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
  let x_1249 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
  let x_1251 : vec4<f32> = u_xlat3;
  let x_1253 : vec4<f32> = u_xlat2;
  let x_1256 : vec4<f32> = u_xlat4;
  let x_1258 : vec3<f32> = ((vec3<f32>(x_1251.x, x_1251.y, x_1251.z) * vec3<f32>(x_1253.x, x_1253.y, x_1253.w)) + vec3<f32>(x_1256.x, x_1256.y, x_1256.z));
  let x_1259 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1258.x, x_1258.y, x_1259.z, x_1258.z);
  let x_1261 : vec4<f32> = u_xlat10;
  let x_1263 : f32 = u_xlat31;
  u_xlat1 = (vec3<f32>(x_1261.x, x_1261.y, x_1261.z) * vec3<f32>(x_1263, x_1263, x_1263));
  let x_1266 : vec3<f32> = u_xlat0;
  let x_1268 : f32 = u_xlat46;
  let x_1270 : vec3<f32> = (-(x_1266) + vec3<f32>(x_1268, x_1268, x_1268));
  let x_1271 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
  let x_1273 : f32 = u_xlat32;
  let x_1275 : vec4<f32> = u_xlat3;
  let x_1278 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1273, x_1273, x_1273) * vec3<f32>(x_1275.x, x_1275.y, x_1275.z)) + x_1278);
  let x_1282 : vec3<f32> = u_xlat1;
  let x_1283 : vec3<f32> = u_xlat0;
  let x_1285 : vec4<f32> = u_xlat2;
  let x_1287 : vec3<f32> = ((x_1282 * x_1283) + vec3<f32>(x_1285.x, x_1285.y, x_1285.w));
  let x_1288 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
  let x_1291 : f32 = u_xlat4.w;
  SV_Target0.w = x_1291;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(6) vs_TEXCOORD6_param : vec4<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
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

