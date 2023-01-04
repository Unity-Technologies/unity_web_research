struct PGlobals {
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_40 : PGlobals;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> u_xlat11 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat16 : f32;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlatb2 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(5) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_283 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_35 : f32 = u_xlat0.y;
  let x_45 : f32 = x_40.x_GlossMapScale;
  SV_Target1.w = (x_35 * x_45);
  let x_57 : vec4<f32> = vs_TEXCOORD0;
  let x_59 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_57.x, x_57.y));
  u_xlat5 = vec3<f32>(x_59.x, x_59.y, x_59.z);
  let x_62 : vec3<f32> = u_xlat5;
  let x_66 : vec4<f32> = x_40.x_Color;
  let x_68 : vec3<f32> = (x_62 * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_72 : vec4<f32> = x_40.x_Color;
  let x_74 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_72.x, x_72.y, x_72.z) * x_74) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_79 : vec4<f32> = u_xlat0;
  let x_81 : vec3<f32> = u_xlat5;
  let x_85 : vec3<f32> = ((vec3<f32>(x_79.x, x_79.x, x_79.x) * x_81) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_86 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_90 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_90) * 0.959999979f) + 0.959999979f);
  let x_96 : vec4<f32> = u_xlat0;
  let x_98 : vec4<f32> = u_xlat1;
  let x_100 : vec3<f32> = (vec3<f32>(x_96.x, x_96.x, x_96.x) * vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_108 : vec4<f32> = vs_TEXCOORD0;
  let x_110 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_108.x, x_108.y));
  let x_111 : vec3<f32> = vec3<f32>(x_110.x, x_110.y, x_110.w);
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_111.z, x_112.w);
  let x_116 : f32 = u_xlat1.z;
  let x_118 : f32 = u_xlat1.x;
  u_xlat1.x = (x_116 * x_118);
  let x_121 : vec4<f32> = u_xlat1;
  let x_128 : vec2<f32> = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_131 : vec4<f32> = u_xlat1;
  let x_135 : f32 = x_40.x_BumpScale;
  let x_137 : vec2<f32> = (vec2<f32>(x_131.x, x_131.y) * vec2<f32>(x_135, x_135));
  let x_138 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_141 : vec4<f32> = u_xlat1;
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat11 = dot(vec2<f32>(x_141.x, x_141.y), vec2<f32>(x_143.x, x_143.y));
  let x_146 : f32 = u_xlat11;
  u_xlat11 = min(x_146, 1.0f);
  let x_149 : f32 = u_xlat11;
  u_xlat11 = (-(x_149) + 1.0f);
  let x_152 : f32 = u_xlat11;
  u_xlat11 = sqrt(x_152);
  let x_155 : vec4<f32> = u_xlat1;
  let x_158 : vec4<f32> = vs_TEXCOORD3;
  let x_160 : vec3<f32> = (vec3<f32>(x_155.y, x_155.y, x_155.y) * vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = vs_TEXCOORD2;
  let x_166 : vec4<f32> = u_xlat1;
  let x_169 : vec4<f32> = u_xlat2;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.x, x_166.x, x_166.x)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_171.z);
  let x_175 : vec4<f32> = vs_TEXCOORD4;
  let x_177 : f32 = u_xlat11;
  let x_180 : vec4<f32> = u_xlat1;
  let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177, x_177, x_177)) + vec3<f32>(x_180.x, x_180.y, x_180.w));
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_186.x, x_186.y, x_186.z), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_191);
  let x_193 : f32 = u_xlat16;
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec3<f32> = (vec3<f32>(x_193, x_193, x_193) * vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
  let x_205 : vec4<f32> = vs_TEXCOORD0;
  let x_207 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_205.x, x_205.y));
  u_xlat2.x = x_207.y;
  let x_213 : f32 = x_40.x_OcclusionStrength;
  u_xlat7.x = (-(x_213) + 1.0f);
  let x_218 : f32 = u_xlat2.x;
  let x_220 : f32 = x_40.x_OcclusionStrength;
  let x_223 : f32 = u_xlat7.x;
  u_xlat0.w = ((x_218 * x_220) + x_223);
  let x_231 : f32 = x_40.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_231 == 1.0f);
  let x_233 : bool = u_xlatb2;
  if (x_233) {
    let x_237 : f32 = x_40.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_237 == 1.0f);
    let x_239 : vec4<f32> = vs_TEXCOORD3;
    let x_244 : vec4<f32> = x_40.unity_ProbeVolumeWorldToObject[1i];
    u_xlat7 = (vec3<f32>(x_239.w, x_239.w, x_239.w) * vec3<f32>(x_244.x, x_244.y, x_244.z));
    let x_249 : vec4<f32> = x_40.unity_ProbeVolumeWorldToObject[0i];
    let x_251 : vec4<f32> = vs_TEXCOORD2;
    let x_254 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.w, x_251.w, x_251.w)) + x_254);
    let x_258 : vec4<f32> = x_40.unity_ProbeVolumeWorldToObject[2i];
    let x_260 : vec4<f32> = vs_TEXCOORD4;
    let x_263 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_258.x, x_258.y, x_258.z) * vec3<f32>(x_260.w, x_260.w, x_260.w)) + x_263);
    let x_265 : vec3<f32> = u_xlat7;
    let x_267 : vec4<f32> = x_40.unity_ProbeVolumeWorldToObject[3i];
    u_xlat7 = (x_265 + vec3<f32>(x_267.x, x_267.y, x_267.z));
    let x_273 : f32 = vs_TEXCOORD2.w;
    u_xlat8.x = x_273;
    let x_276 : f32 = vs_TEXCOORD3.w;
    u_xlat8.y = x_276;
    let x_279 : f32 = vs_TEXCOORD4.w;
    u_xlat8.z = x_279;
    let x_281 : bool = u_xlatb2;
    if (x_281) {
      let x_286 : vec3<f32> = u_xlat7;
      x_283 = x_286;
    } else {
      let x_288 : vec3<f32> = u_xlat8;
      x_283 = x_288;
    }
    let x_289 : vec3<f32> = x_283;
    let x_290 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
    let x_292 : vec4<f32> = u_xlat2;
    let x_297 : vec3<f32> = x_40.unity_ProbeVolumeMin;
    let x_299 : vec3<f32> = (vec3<f32>(x_292.x, x_292.y, x_292.z) + -(x_297));
    let x_300 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat2;
    let x_306 : vec3<f32> = x_40.unity_ProbeVolumeSizeInv;
    let x_307 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * x_306);
    let x_308 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_308.x, x_307.x, x_307.y, x_307.z);
    let x_311 : f32 = u_xlat2.y;
    u_xlat7.x = (x_311 * 0.25f);
    let x_317 : f32 = x_40.unity_ProbeVolumeParams.z;
    u_xlat3.x = (x_317 * 0.5f);
    let x_322 : f32 = x_40.unity_ProbeVolumeParams.z;
    u_xlat8.x = ((-(x_322) * 0.5f) + 0.25f);
    let x_328 : f32 = u_xlat7.x;
    let x_330 : f32 = u_xlat3.x;
    u_xlat7.x = max(x_328, x_330);
    let x_334 : f32 = u_xlat8.x;
    let x_336 : f32 = u_xlat7.x;
    u_xlat2.x = min(x_334, x_336);
    let x_347 : vec4<f32> = u_xlat2;
    let x_349 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_347.x, x_347.z, x_347.w));
    u_xlat3 = x_349;
    let x_351 : vec4<f32> = u_xlat2;
    let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.z, x_351.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_356 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_361 : vec4<f32> = u_xlat4;
    let x_363 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_361.x, x_361.y, x_361.z));
    u_xlat4 = x_363;
    let x_364 : vec4<f32> = u_xlat2;
    let x_367 : vec3<f32> = (vec3<f32>(x_364.x, x_364.z, x_364.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_368 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
    let x_373 : vec4<f32> = u_xlat2;
    let x_375 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_373.x, x_373.y, x_373.z));
    u_xlat2 = x_375;
    u_xlat1.w = 1.0f;
    let x_377 : vec4<f32> = u_xlat3;
    let x_378 : vec4<f32> = u_xlat1;
    u_xlat3.x = dot(x_377, x_378);
    let x_381 : vec4<f32> = u_xlat4;
    let x_382 : vec4<f32> = u_xlat1;
    u_xlat3.y = dot(x_381, x_382);
    let x_385 : vec4<f32> = u_xlat2;
    let x_386 : vec4<f32> = u_xlat1;
    u_xlat3.z = dot(x_385, x_386);
  } else {
    u_xlat1.w = 1.0f;
    let x_392 : vec4<f32> = x_40.unity_SHAr;
    let x_393 : vec4<f32> = u_xlat1;
    u_xlat3.x = dot(x_392, x_393);
    let x_397 : vec4<f32> = x_40.unity_SHAg;
    let x_398 : vec4<f32> = u_xlat1;
    u_xlat3.y = dot(x_397, x_398);
    let x_402 : vec4<f32> = x_40.unity_SHAb;
    let x_403 : vec4<f32> = u_xlat1;
    u_xlat3.z = dot(x_402, x_403);
  }
  let x_406 : vec4<f32> = u_xlat3;
  let x_409 : vec4<f32> = vs_TEXCOORD5;
  let x_411 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) + vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat2;
  let x_417 : vec3<f32> = max(vec3<f32>(x_414.x, x_414.y, x_414.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat0;
  let x_422 : vec4<f32> = u_xlat2;
  let x_424 : vec3<f32> = (vec3<f32>(x_420.w, x_420.w, x_420.w) * vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_424.x, x_424.y, x_424.z, x_425.w);
  let x_432 : vec4<f32> = vs_TEXCOORD0;
  let x_434 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_432.x, x_432.y));
  let x_435 : vec3<f32> = vec3<f32>(x_434.x, x_434.y, x_434.z);
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat3;
  let x_442 : vec4<f32> = x_40.x_EmissionColor;
  let x_444 : vec3<f32> = (vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_444.x, x_444.y, x_444.z, x_445.w);
  let x_447 : vec4<f32> = u_xlat0;
  let x_449 : vec4<f32> = u_xlat2;
  let x_452 : vec4<f32> = u_xlat3;
  let x_454 : vec3<f32> = ((vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_449.x, x_449.y, x_449.z)) + vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_458 : vec4<f32> = u_xlat2;
  let x_461 : vec3<f32> = exp2(-(vec3<f32>(x_458.x, x_458.y, x_458.z)));
  let x_462 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_465 : vec4<f32> = u_xlat1;
  let x_469 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.y, x_465.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_470 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_473 : vec4<f32> = u_xlat0;
  SV_Target0 = x_473;
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(4) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target3, SV_Target2, SV_Target0);
}

