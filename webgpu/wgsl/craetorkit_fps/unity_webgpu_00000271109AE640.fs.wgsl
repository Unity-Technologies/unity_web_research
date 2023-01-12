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

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_EmissionMap : sampler;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat11 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat8 : vec3<f32>;
  var x_282 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
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
      let x_285 : vec3<f32> = u_xlat7;
      x_282 = x_285;
    } else {
      let x_287 : vec3<f32> = u_xlat8;
      x_282 = x_287;
    }
    let x_288 : vec3<f32> = x_282;
    let x_289 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
    let x_291 : vec4<f32> = u_xlat2;
    let x_296 : vec3<f32> = x_40.unity_ProbeVolumeMin;
    let x_298 : vec3<f32> = (vec3<f32>(x_291.x, x_291.y, x_291.z) + -(x_296));
    let x_299 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
    let x_301 : vec4<f32> = u_xlat2;
    let x_305 : vec3<f32> = x_40.unity_ProbeVolumeSizeInv;
    let x_306 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) * x_305);
    let x_307 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_307.x, x_306.x, x_306.y, x_306.z);
    let x_310 : f32 = u_xlat2.y;
    u_xlat7.x = (x_310 * 0.25f);
    let x_316 : f32 = x_40.unity_ProbeVolumeParams.z;
    u_xlat3.x = (x_316 * 0.5f);
    let x_321 : f32 = x_40.unity_ProbeVolumeParams.z;
    u_xlat8.x = ((-(x_321) * 0.5f) + 0.25f);
    let x_327 : f32 = u_xlat7.x;
    let x_329 : f32 = u_xlat3.x;
    u_xlat7.x = max(x_327, x_329);
    let x_333 : f32 = u_xlat8.x;
    let x_335 : f32 = u_xlat7.x;
    u_xlat2.x = min(x_333, x_335);
    let x_346 : vec4<f32> = u_xlat2;
    let x_348 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_346.x, x_346.z, x_346.w));
    u_xlat3 = x_348;
    let x_350 : vec4<f32> = u_xlat2;
    let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.z, x_350.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_355 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
    let x_360 : vec4<f32> = u_xlat4;
    let x_362 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_360.x, x_360.y, x_360.z));
    u_xlat4 = x_362;
    let x_363 : vec4<f32> = u_xlat2;
    let x_366 : vec3<f32> = (vec3<f32>(x_363.x, x_363.z, x_363.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_367 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
    let x_372 : vec4<f32> = u_xlat2;
    let x_374 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_372.x, x_372.y, x_372.z));
    u_xlat2 = x_374;
    u_xlat1.w = 1.0f;
    let x_376 : vec4<f32> = u_xlat3;
    let x_377 : vec4<f32> = u_xlat1;
    u_xlat3.x = dot(x_376, x_377);
    let x_380 : vec4<f32> = u_xlat4;
    let x_381 : vec4<f32> = u_xlat1;
    u_xlat3.y = dot(x_380, x_381);
    let x_384 : vec4<f32> = u_xlat2;
    let x_385 : vec4<f32> = u_xlat1;
    u_xlat3.z = dot(x_384, x_385);
  } else {
    u_xlat1.w = 1.0f;
    let x_391 : vec4<f32> = x_40.unity_SHAr;
    let x_392 : vec4<f32> = u_xlat1;
    u_xlat3.x = dot(x_391, x_392);
    let x_396 : vec4<f32> = x_40.unity_SHAg;
    let x_397 : vec4<f32> = u_xlat1;
    u_xlat3.y = dot(x_396, x_397);
    let x_401 : vec4<f32> = x_40.unity_SHAb;
    let x_402 : vec4<f32> = u_xlat1;
    u_xlat3.z = dot(x_401, x_402);
  }
  let x_405 : vec4<f32> = u_xlat3;
  let x_408 : vec4<f32> = vs_TEXCOORD5;
  let x_410 : vec3<f32> = (vec3<f32>(x_405.x, x_405.y, x_405.z) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec4<f32> = u_xlat2;
  let x_416 : vec3<f32> = max(vec3<f32>(x_413.x, x_413.y, x_413.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat0;
  let x_421 : vec4<f32> = u_xlat2;
  let x_423 : vec3<f32> = (vec3<f32>(x_419.w, x_419.w, x_419.w) * vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_431 : vec4<f32> = vs_TEXCOORD0;
  let x_433 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_431.x, x_431.y));
  let x_434 : vec3<f32> = vec3<f32>(x_433.x, x_433.y, x_433.z);
  let x_435 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat3;
  let x_441 : vec4<f32> = x_40.x_EmissionColor;
  let x_443 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_447 : vec4<f32> = u_xlat0;
  let x_449 : vec4<f32> = u_xlat2;
  let x_452 : vec4<f32> = u_xlat3;
  let x_454 : vec3<f32> = ((vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_449.x, x_449.y, x_449.z)) + vec3<f32>(x_452.x, x_452.y, x_452.z));
  let x_455 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_458 : vec4<f32> = u_xlat1;
  let x_462 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_463 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_466 : vec4<f32> = u_xlat0;
  SV_Target0 = x_466;
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

