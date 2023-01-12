struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat22 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var x_167 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
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
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_77 : vec4<f32> = vs_TEXCOORD4;
  let x_79 : vec4<f32> = vs_TEXCOORD4;
  u_xlat22 = dot(vec3<f32>(x_77.x, x_77.y, x_77.z), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_82);
  let x_85 : f32 = u_xlat22;
  let x_87 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_85, x_85, x_85) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_97 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_97 == 1.0f);
  let x_100 : bool = u_xlatb22;
  if (x_100) {
    let x_105 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_105 == 1.0f);
    let x_110 : vec4<f32> = vs_TEXCOORD3;
    let x_115 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_117 : vec3<f32> = (vec3<f32>(x_110.w, x_110.w, x_110.w) * vec3<f32>(x_115.x, x_115.y, x_115.z));
    let x_118 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
    let x_122 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_125 : vec4<f32> = vs_TEXCOORD2;
    let x_128 : vec4<f32> = u_xlat3;
    let x_130 : vec3<f32> = ((vec3<f32>(x_122.x, x_122.y, x_122.z) * vec3<f32>(x_125.w, x_125.w, x_125.w)) + vec3<f32>(x_128.x, x_128.y, x_128.z));
    let x_131 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
    let x_135 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_137 : vec4<f32> = vs_TEXCOORD4;
    let x_140 : vec4<f32> = u_xlat3;
    let x_142 : vec3<f32> = ((vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_137.w, x_137.w, x_137.w)) + vec3<f32>(x_140.x, x_140.y, x_140.z));
    let x_143 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
    let x_145 : vec4<f32> = u_xlat3;
    let x_148 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_150 : vec3<f32> = (vec3<f32>(x_145.x, x_145.y, x_145.z) + vec3<f32>(x_148.x, x_148.y, x_148.z));
    let x_151 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
    let x_157 : f32 = vs_TEXCOORD2.w;
    u_xlat11.x = x_157;
    let x_160 : f32 = vs_TEXCOORD3.w;
    u_xlat11.y = x_160;
    let x_163 : f32 = vs_TEXCOORD4.w;
    u_xlat11.z = x_163;
    let x_166 : bool = u_xlatb22;
    if (x_166) {
      let x_170 : vec4<f32> = u_xlat3;
      x_167 = vec3<f32>(x_170.x, x_170.y, x_170.z);
    } else {
      let x_173 : vec3<f32> = u_xlat11;
      x_167 = x_173;
    }
    let x_174 : vec3<f32> = x_167;
    let x_175 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_177 : vec4<f32> = u_xlat3;
    let x_182 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_184 : vec3<f32> = (vec3<f32>(x_177.x, x_177.y, x_177.z) + -(x_182));
    let x_185 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : vec4<f32> = u_xlat3;
    let x_191 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_192 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) * x_191);
    let x_193 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_193.x, x_192.x, x_192.y, x_192.z);
    let x_196 : f32 = u_xlat3.y;
    u_xlat22 = ((x_196 * 0.25f) + 0.75f);
    let x_203 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_203 * 0.5f) + 0.75f);
    let x_207 : f32 = u_xlat22;
    let x_208 : f32 = u_xlat23;
    u_xlat3.x = max(x_207, x_208);
    let x_219 : vec4<f32> = u_xlat3;
    let x_221 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_219.x, x_219.z, x_219.w));
    u_xlat3 = x_221;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_227 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_227, x_229);
  let x_231 : f32 = u_xlat22;
  u_xlat22 = clamp(x_231, 0.0f, 1.0f);
  let x_239 : vec4<f32> = vs_TEXCOORD0;
  let x_241 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_239.x, x_239.y));
  u_xlat23 = x_241.y;
  let x_245 : f32 = x_33.x_Glossiness;
  let x_247 : f32 = x_33.x_Glossiness;
  let x_248 : vec2<f32> = vec2<f32>(x_245, x_247);
  let x_254 : vec2<f32> = (-(vec2<f32>(x_248.x, x_248.y)) + vec2<f32>(1.0f, 1.0f));
  let x_255 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_254.x, x_255.y, x_255.z, x_254.y);
  let x_259 : vec4<f32> = vs_TEXCOORD1;
  let x_261 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), x_261);
  let x_265 : f32 = u_xlat4.x;
  let x_267 : f32 = u_xlat4.x;
  u_xlat4.x = (x_265 + x_267);
  let x_270 : vec3<f32> = u_xlat2;
  let x_271 : vec4<f32> = u_xlat4;
  let x_275 : vec4<f32> = vs_TEXCOORD1;
  let x_277 : vec3<f32> = ((x_270 * -(vec3<f32>(x_271.x, x_271.x, x_271.x))) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : f32 = u_xlat22;
  let x_285 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_281, x_281, x_281) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_289) * 0.699999988f) + 1.700000048f);
  let x_295 : f32 = u_xlat22;
  let x_297 : f32 = u_xlat3.x;
  u_xlat22 = (x_295 * x_297);
  let x_299 : f32 = u_xlat22;
  u_xlat22 = (x_299 * 6.0f);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : f32 = u_xlat22;
  let x_313 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_310.x, x_310.y, x_310.z), x_312);
  u_xlat4 = x_313;
  let x_315 : f32 = u_xlat4.w;
  u_xlat22 = (x_315 + -1.0f);
  let x_319 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_320 : f32 = u_xlat22;
  u_xlat22 = ((x_319 * x_320) + 1.0f);
  let x_323 : f32 = u_xlat22;
  u_xlat22 = log2(x_323);
  let x_325 : f32 = u_xlat22;
  let x_327 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat22 = (x_325 * x_327);
  let x_329 : f32 = u_xlat22;
  u_xlat22 = exp2(x_329);
  let x_331 : f32 = u_xlat22;
  let x_333 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat22 = (x_331 * x_333);
  let x_335 : vec4<f32> = u_xlat4;
  let x_337 : f32 = u_xlat22;
  let x_339 : vec3<f32> = (vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337, x_337, x_337));
  let x_340 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : f32 = u_xlat23;
  let x_344 : vec4<f32> = u_xlat4;
  let x_346 : vec3<f32> = (vec3<f32>(x_342, x_342, x_342) * vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_347 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  let x_349 : vec4<f32> = vs_TEXCOORD1;
  let x_352 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(-(vec3<f32>(x_349.x, x_349.y, x_349.z)), x_352);
  let x_354 : f32 = u_xlat22;
  let x_355 : f32 = u_xlat22;
  u_xlat23 = (x_354 + x_355);
  let x_358 : vec3<f32> = u_xlat2;
  let x_359 : f32 = u_xlat23;
  let x_363 : vec4<f32> = vs_TEXCOORD1;
  u_xlat6 = ((x_358 * -(vec3<f32>(x_359, x_359, x_359))) + -(vec3<f32>(x_363.x, x_363.y, x_363.z)));
  let x_367 : vec3<f32> = u_xlat2;
  let x_369 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_367, vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_374 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_374, 0.0f, 1.0f);
  let x_377 : f32 = u_xlat22;
  u_xlat22 = x_377;
  let x_378 : f32 = u_xlat22;
  u_xlat22 = clamp(x_378, 0.0f, 1.0f);
  let x_380 : vec3<f32> = u_xlat6;
  let x_382 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6.x = dot(x_380, vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_386 : f32 = u_xlat22;
  u_xlat6.y = (-(x_386) + 1.0f);
  let x_391 : vec3<f32> = u_xlat6;
  let x_393 : vec3<f32> = u_xlat6;
  let x_395 : vec2<f32> = (vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_393.x, x_393.y));
  let x_396 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_395.x, x_395.y, x_396.z);
  let x_398 : vec3<f32> = u_xlat9;
  let x_400 : vec3<f32> = u_xlat9;
  let x_402 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_400.x, x_400.y));
  let x_403 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_403.x, x_402.x, x_402.y, x_403.w);
  let x_405 : f32 = u_xlat21;
  let x_408 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_405) + x_408);
  let x_410 : f32 = u_xlat22;
  u_xlat22 = (x_410 + 1.0f);
  let x_412 : f32 = u_xlat22;
  u_xlat22 = clamp(x_412, 0.0f, 1.0f);
  let x_419 : vec4<f32> = u_xlat3;
  let x_421 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_419.y, x_419.w));
  u_xlat9.x = x_421.x;
  let x_425 : f32 = u_xlat9.x;
  u_xlat9.x = (x_425 * 16.0f);
  let x_429 : vec3<f32> = u_xlat0;
  let x_430 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_429 * vec3<f32>(x_430.x, x_430.x, x_430.x));
  let x_433 : vec3<f32> = u_xlat1;
  let x_434 : f32 = u_xlat21;
  let x_437 : vec3<f32> = u_xlat9;
  u_xlat1 = ((x_433 * vec3<f32>(x_434, x_434, x_434)) + x_437);
  let x_439 : vec3<f32> = u_xlat2;
  let x_441 : vec3<f32> = u_xlat5;
  u_xlat2 = (vec3<f32>(x_439.x, x_439.x, x_439.x) * x_441);
  let x_443 : vec3<f32> = u_xlat0;
  let x_445 : f32 = u_xlat22;
  let x_447 : vec3<f32> = (-(x_443) + vec3<f32>(x_445, x_445, x_445));
  let x_448 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_447.x, x_447.y, x_448.z, x_447.z);
  let x_450 : vec4<f32> = u_xlat3;
  let x_452 : vec4<f32> = u_xlat3;
  let x_455 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_450.z, x_450.z, x_450.z) * vec3<f32>(x_452.x, x_452.y, x_452.w)) + x_455);
  let x_457 : vec3<f32> = u_xlat0;
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_457 * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec3<f32> = u_xlat1;
  let x_462 : vec3<f32> = u_xlat2;
  let x_464 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_461 * x_462) + x_464);
  let x_471 : vec4<f32> = vs_TEXCOORD0;
  let x_473 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_471.x, x_471.y));
  u_xlat1 = vec3<f32>(x_473.x, x_473.y, x_473.z);
  let x_477 : vec3<f32> = u_xlat1;
  let x_480 : vec4<f32> = x_33.x_EmissionColor;
  let x_483 : vec3<f32> = u_xlat0;
  let x_484 : vec3<f32> = ((x_477 * vec3<f32>(x_480.x, x_480.y, x_480.z)) + x_483);
  let x_485 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_484.x, x_484.y, x_484.z, x_485.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

