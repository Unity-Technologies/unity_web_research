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
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat21 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var x_181 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (vec4<f32>(x_27.w, x_27.x, x_27.y, x_27.z) * vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_33.x_Color;
  let x_49 : vec3<f32> = ((vec3<f32>(x_41.x, x_41.y, x_41.z) * vec3<f32>(x_44.x, x_44.y, x_44.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_55 : f32 = x_33.x_Metallic;
  let x_57 : f32 = x_33.x_Metallic;
  let x_59 : f32 = x_33.x_Metallic;
  let x_60 : vec3<f32> = vec3<f32>(x_55, x_57, x_59);
  let x_65 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * vec3<f32>(x_65.x, x_65.y, x_65.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_76 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_76) * 0.959999979f) + 0.959999979f);
  let x_83 : f32 = u_xlat21;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat8 = (vec3<f32>(x_83, x_83, x_83) * vec3<f32>(x_85.y, x_85.z, x_85.w));
  let x_90 : vec4<f32> = vs_TEXCOORD4;
  let x_92 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2.x = dot(vec3<f32>(x_90.x, x_90.y, x_90.z), vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_99 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_99);
  let x_102 : vec3<f32> = u_xlat2;
  let x_104 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_102.x, x_102.x, x_102.x) * vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_112 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_112 == 1.0f);
  let x_115 : bool = u_xlatb23;
  if (x_115) {
    let x_120 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_120 == 1.0f);
    let x_124 : vec4<f32> = vs_TEXCOORD3;
    let x_129 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_131 : vec3<f32> = (vec3<f32>(x_124.w, x_124.w, x_124.w) * vec3<f32>(x_129.x, x_129.y, x_129.z));
    let x_132 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
    let x_136 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_139 : vec4<f32> = vs_TEXCOORD2;
    let x_142 : vec4<f32> = u_xlat3;
    let x_144 : vec3<f32> = ((vec3<f32>(x_136.x, x_136.y, x_136.z) * vec3<f32>(x_139.w, x_139.w, x_139.w)) + vec3<f32>(x_142.x, x_142.y, x_142.z));
    let x_145 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
    let x_149 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_151 : vec4<f32> = vs_TEXCOORD4;
    let x_154 : vec4<f32> = u_xlat3;
    let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.w, x_151.w, x_151.w)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
    let x_157 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
    let x_159 : vec4<f32> = u_xlat3;
    let x_162 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_164 : vec3<f32> = (vec3<f32>(x_159.x, x_159.y, x_159.z) + vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_171 : f32 = vs_TEXCOORD2.w;
    u_xlat11.x = x_171;
    let x_174 : f32 = vs_TEXCOORD3.w;
    u_xlat11.y = x_174;
    let x_177 : f32 = vs_TEXCOORD4.w;
    u_xlat11.z = x_177;
    let x_180 : bool = u_xlatb23;
    if (x_180) {
      let x_184 : vec4<f32> = u_xlat3;
      x_181 = vec3<f32>(x_184.x, x_184.y, x_184.z);
    } else {
      let x_187 : vec3<f32> = u_xlat11;
      x_181 = x_187;
    }
    let x_188 : vec3<f32> = x_181;
    let x_189 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
    let x_191 : vec4<f32> = u_xlat3;
    let x_196 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_198 : vec3<f32> = (vec3<f32>(x_191.x, x_191.y, x_191.z) + -(x_196));
    let x_199 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
    let x_201 : vec4<f32> = u_xlat3;
    let x_205 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_206 : vec3<f32> = (vec3<f32>(x_201.x, x_201.y, x_201.z) * x_205);
    let x_207 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_207.x, x_206.x, x_206.y, x_206.z);
    let x_211 : f32 = u_xlat3.y;
    u_xlat23 = ((x_211 * 0.25f) + 0.75f);
    let x_218 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat10.x = ((x_218 * 0.5f) + 0.75f);
    let x_223 : f32 = u_xlat23;
    let x_225 : f32 = u_xlat10.x;
    u_xlat3.x = max(x_223, x_225);
    let x_236 : vec4<f32> = u_xlat3;
    let x_238 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_236.x, x_236.z, x_236.w));
    u_xlat3 = x_238;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_244 : vec4<f32> = u_xlat3;
  let x_246 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_244, x_246);
  let x_248 : f32 = u_xlat23;
  u_xlat23 = clamp(x_248, 0.0f, 1.0f);
  let x_256 : vec4<f32> = vs_TEXCOORD0;
  let x_258 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_256.x, x_256.y));
  u_xlat3.x = x_258.y;
  let x_264 : f32 = x_33.x_Glossiness;
  let x_266 : f32 = x_33.x_Glossiness;
  let x_267 : vec2<f32> = vec2<f32>(x_264, x_266);
  let x_273 : vec2<f32> = (-(vec2<f32>(x_267.x, x_267.y)) + vec2<f32>(1.0f, 1.0f));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_274.y, x_274.z, x_273.y);
  let x_277 : vec4<f32> = vs_TEXCOORD1;
  let x_279 : vec3<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_277.x, x_277.y, x_277.z), x_279);
  let x_283 : f32 = u_xlat10.x;
  let x_285 : f32 = u_xlat10.x;
  u_xlat10.x = (x_283 + x_285);
  let x_288 : vec3<f32> = u_xlat2;
  let x_289 : vec3<f32> = u_xlat10;
  let x_293 : vec4<f32> = vs_TEXCOORD1;
  u_xlat10 = ((x_288 * -(vec3<f32>(x_289.x, x_289.x, x_289.x))) + vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : f32 = u_xlat23;
  let x_301 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_297, x_297, x_297) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_305 : f32 = u_xlat4.x;
  u_xlat23 = ((-(x_305) * 0.699999988f) + 1.700000048f);
  let x_311 : f32 = u_xlat23;
  let x_313 : f32 = u_xlat4.x;
  u_xlat23 = (x_311 * x_313);
  let x_315 : f32 = u_xlat23;
  u_xlat23 = (x_315 * 6.0f);
  let x_327 : vec3<f32> = u_xlat10;
  let x_328 : f32 = u_xlat23;
  let x_329 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_327, x_328);
  u_xlat6 = x_329;
  let x_331 : f32 = u_xlat6.w;
  u_xlat23 = (x_331 + -1.0f);
  let x_335 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_336 : f32 = u_xlat23;
  u_xlat23 = ((x_335 * x_336) + 1.0f);
  let x_339 : f32 = u_xlat23;
  u_xlat23 = log2(x_339);
  let x_341 : f32 = u_xlat23;
  let x_343 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat23 = (x_341 * x_343);
  let x_345 : f32 = u_xlat23;
  u_xlat23 = exp2(x_345);
  let x_347 : f32 = u_xlat23;
  let x_349 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat23 = (x_347 * x_349);
  let x_351 : vec4<f32> = u_xlat6;
  let x_353 : f32 = u_xlat23;
  u_xlat10 = (vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353, x_353, x_353));
  let x_356 : vec4<f32> = u_xlat3;
  let x_358 : vec3<f32> = u_xlat10;
  let x_359 : vec3<f32> = (vec3<f32>(x_356.x, x_356.x, x_356.x) * x_358);
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = vs_TEXCOORD1;
  let x_365 : vec3<f32> = u_xlat2;
  u_xlat23 = dot(-(vec3<f32>(x_362.x, x_362.y, x_362.z)), x_365);
  let x_368 : f32 = u_xlat23;
  let x_369 : f32 = u_xlat23;
  u_xlat24 = (x_368 + x_369);
  let x_371 : vec3<f32> = u_xlat2;
  let x_372 : f32 = u_xlat24;
  let x_376 : vec4<f32> = vs_TEXCOORD1;
  let x_379 : vec3<f32> = ((x_371 * -(vec3<f32>(x_372, x_372, x_372))) + -(vec3<f32>(x_376.x, x_376.y, x_376.z)));
  let x_380 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec3<f32> = u_xlat2;
  let x_384 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_382, vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_389 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_389, 0.0f, 1.0f);
  let x_392 : f32 = u_xlat23;
  u_xlat23 = x_392;
  let x_393 : f32 = u_xlat23;
  u_xlat23 = clamp(x_393, 0.0f, 1.0f);
  let x_395 : vec4<f32> = u_xlat6;
  let x_398 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat6.x = dot(vec3<f32>(x_395.x, x_395.y, x_395.z), vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_402 : f32 = u_xlat23;
  u_xlat6.y = (-(x_402) + 1.0f);
  let x_407 : vec4<f32> = u_xlat6;
  let x_409 : vec4<f32> = u_xlat6;
  let x_411 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) * vec2<f32>(x_409.x, x_409.y));
  let x_412 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_411.x, x_411.y, x_412.z);
  let x_414 : vec3<f32> = u_xlat9;
  let x_416 : vec3<f32> = u_xlat9;
  let x_418 : vec2<f32> = (vec2<f32>(x_414.x, x_414.y) * vec2<f32>(x_416.x, x_416.y));
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_418.x, x_418.y, x_419.w);
  let x_421 : f32 = u_xlat21;
  let x_424 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_421) + x_424);
  let x_426 : f32 = u_xlat21;
  u_xlat21 = (x_426 + 1.0f);
  let x_428 : f32 = u_xlat21;
  u_xlat21 = clamp(x_428, 0.0f, 1.0f);
  let x_435 : vec4<f32> = u_xlat4;
  let x_437 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_435.y, x_435.w));
  u_xlat9.x = x_437.x;
  let x_441 : f32 = u_xlat9.x;
  u_xlat9.x = (x_441 * 16.0f);
  let x_445 : vec4<f32> = u_xlat0;
  let x_447 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_445.x, x_445.y, x_445.z) * vec3<f32>(x_447.x, x_447.x, x_447.x));
  let x_450 : vec3<f32> = u_xlat8;
  let x_451 : vec4<f32> = u_xlat1;
  let x_454 : vec3<f32> = u_xlat9;
  u_xlat8 = ((x_450 * vec3<f32>(x_451.x, x_451.x, x_451.x)) + x_454);
  let x_456 : vec3<f32> = u_xlat2;
  let x_458 : vec3<f32> = u_xlat5;
  u_xlat2 = (vec3<f32>(x_456.x, x_456.x, x_456.x) * x_458);
  let x_460 : vec4<f32> = u_xlat0;
  let x_463 : f32 = u_xlat21;
  let x_465 : vec3<f32> = (-(vec3<f32>(x_460.x, x_460.y, x_460.z)) + vec3<f32>(x_463, x_463, x_463));
  let x_466 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_465.z);
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec4<f32> = u_xlat4;
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : vec3<f32> = ((vec3<f32>(x_468.z, x_468.z, x_468.z) * vec3<f32>(x_470.x, x_470.y, x_470.w)) + vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat0;
  let x_480 : vec4<f32> = u_xlat3;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_487 : vec3<f32> = u_xlat8;
  let x_488 : vec3<f32> = u_xlat2;
  let x_490 : vec4<f32> = u_xlat0;
  let x_492 : vec3<f32> = ((x_487 * x_488) + vec3<f32>(x_490.x, x_490.y, x_490.z));
  let x_493 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_496 : f32 = u_xlat1.x;
  SV_Target0.w = x_496;
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

