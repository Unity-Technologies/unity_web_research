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
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_36 : PGlobals;

var<private> SV_Target1 : vec4<f32>;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_OcclusionMap : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat11 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat8 : vec3<f32>;
  var x_279 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  let x_27 : vec3<f32> = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_28 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_27.x, x_27.y, x_27.z, x_28.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = x_36.x_Color;
  let x_43 : vec3<f32> = (vec3<f32>(x_31.x, x_31.y, x_31.z) * vec3<f32>(x_41.x, x_41.y, x_41.z));
  let x_44 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_43.x, x_43.y, x_43.z, x_44.w);
  let x_47 : vec4<f32> = x_36.x_Color;
  let x_49 : vec4<f32> = u_xlat0;
  let x_54 : vec3<f32> = ((vec3<f32>(x_47.x, x_47.y, x_47.z) * vec3<f32>(x_49.x, x_49.y, x_49.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  let x_62 : f32 = x_36.x_Metallic;
  let x_64 : f32 = x_36.x_Metallic;
  let x_66 : f32 = x_36.x_Metallic;
  let x_67 : vec3<f32> = vec3<f32>(x_62, x_64, x_66);
  let x_72 : vec4<f32> = u_xlat0;
  let x_77 : vec3<f32> = ((vec3<f32>(x_67.x, x_67.y, x_67.z) * vec3<f32>(x_72.x, x_72.y, x_72.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_78 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_81 : f32 = x_36.x_Metallic;
  u_xlat0.x = ((-(x_81) * 0.959999979f) + 0.959999979f);
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat1;
  let x_94 : vec3<f32> = (vec3<f32>(x_90.x, x_90.x, x_90.x) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_102 : vec4<f32> = vs_TEXCOORD0;
  let x_104 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_102.x, x_102.y));
  let x_105 : vec3<f32> = vec3<f32>(x_104.x, x_104.y, x_104.w);
  let x_106 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_110 : f32 = u_xlat1.z;
  let x_112 : f32 = u_xlat1.x;
  u_xlat1.x = (x_110 * x_112);
  let x_115 : vec4<f32> = u_xlat1;
  let x_122 : vec2<f32> = ((vec2<f32>(x_115.x, x_115.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat1;
  let x_129 : f32 = x_36.x_BumpScale;
  let x_131 : vec2<f32> = (vec2<f32>(x_125.x, x_125.y) * vec2<f32>(x_129, x_129));
  let x_132 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_131.x, x_131.y, x_132.z, x_132.w);
  let x_135 : vec4<f32> = u_xlat1;
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat11 = dot(vec2<f32>(x_135.x, x_135.y), vec2<f32>(x_137.x, x_137.y));
  let x_140 : f32 = u_xlat11;
  u_xlat11 = min(x_140, 1.0f);
  let x_143 : f32 = u_xlat11;
  u_xlat11 = (-(x_143) + 1.0f);
  let x_146 : f32 = u_xlat11;
  u_xlat11 = sqrt(x_146);
  let x_149 : vec4<f32> = u_xlat1;
  let x_152 : vec4<f32> = vs_TEXCOORD3;
  let x_154 : vec3<f32> = (vec3<f32>(x_149.y, x_149.y, x_149.y) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD2;
  let x_160 : vec4<f32> = u_xlat1;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_165.x, x_165.y, x_166.z, x_165.z);
  let x_169 : vec4<f32> = vs_TEXCOORD4;
  let x_171 : f32 = u_xlat11;
  let x_174 : vec4<f32> = u_xlat1;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171, x_171, x_171)) + vec3<f32>(x_174.x, x_174.y, x_174.w));
  let x_177 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = u_xlat1;
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_185);
  let x_187 : f32 = u_xlat16;
  let x_189 : vec4<f32> = u_xlat1;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_199 : vec4<f32> = vs_TEXCOORD0;
  let x_201 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_199.x, x_199.y));
  u_xlat2.x = x_201.y;
  let x_209 : f32 = x_36.x_OcclusionStrength;
  u_xlat7.x = (-(x_209) + 1.0f);
  let x_214 : f32 = u_xlat2.x;
  let x_216 : f32 = x_36.x_OcclusionStrength;
  let x_219 : f32 = u_xlat7.x;
  u_xlat0.w = ((x_214 * x_216) + x_219);
  let x_228 : f32 = x_36.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_228 == 1.0f);
  let x_230 : bool = u_xlatb2;
  if (x_230) {
    let x_234 : f32 = x_36.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_234 == 1.0f);
    let x_236 : vec4<f32> = vs_TEXCOORD3;
    let x_241 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[1i];
    u_xlat7 = (vec3<f32>(x_236.w, x_236.w, x_236.w) * vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_246 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[0i];
    let x_248 : vec4<f32> = vs_TEXCOORD2;
    let x_251 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(x_248.w, x_248.w, x_248.w)) + x_251);
    let x_255 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[2i];
    let x_257 : vec4<f32> = vs_TEXCOORD4;
    let x_260 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257.w, x_257.w, x_257.w)) + x_260);
    let x_262 : vec3<f32> = u_xlat7;
    let x_264 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[3i];
    u_xlat7 = (x_262 + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_270 : f32 = vs_TEXCOORD2.w;
    u_xlat8.x = x_270;
    let x_273 : f32 = vs_TEXCOORD3.w;
    u_xlat8.y = x_273;
    let x_276 : f32 = vs_TEXCOORD4.w;
    u_xlat8.z = x_276;
    let x_278 : bool = u_xlatb2;
    if (x_278) {
      let x_282 : vec3<f32> = u_xlat7;
      x_279 = x_282;
    } else {
      let x_284 : vec3<f32> = u_xlat8;
      x_279 = x_284;
    }
    let x_285 : vec3<f32> = x_279;
    let x_286 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat2;
    let x_293 : vec3<f32> = x_36.unity_ProbeVolumeMin;
    let x_295 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) + -(x_293));
    let x_296 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_298 : vec4<f32> = u_xlat2;
    let x_302 : vec3<f32> = x_36.unity_ProbeVolumeSizeInv;
    let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) * x_302);
    let x_304 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_304.x, x_303.x, x_303.y, x_303.z);
    let x_307 : f32 = u_xlat2.y;
    u_xlat7.x = (x_307 * 0.25f);
    let x_313 : f32 = x_36.unity_ProbeVolumeParams.z;
    u_xlat3.x = (x_313 * 0.5f);
    let x_318 : f32 = x_36.unity_ProbeVolumeParams.z;
    u_xlat8.x = ((-(x_318) * 0.5f) + 0.25f);
    let x_324 : f32 = u_xlat7.x;
    let x_326 : f32 = u_xlat3.x;
    u_xlat7.x = max(x_324, x_326);
    let x_330 : f32 = u_xlat8.x;
    let x_332 : f32 = u_xlat7.x;
    u_xlat2.x = min(x_330, x_332);
    let x_343 : vec4<f32> = u_xlat2;
    let x_345 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_343.x, x_343.z, x_343.w));
    u_xlat3 = x_345;
    let x_347 : vec4<f32> = u_xlat2;
    let x_351 : vec3<f32> = (vec3<f32>(x_347.x, x_347.z, x_347.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_352 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
    let x_357 : vec4<f32> = u_xlat4;
    let x_359 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_357.x, x_357.y, x_357.z));
    u_xlat4 = x_359;
    let x_360 : vec4<f32> = u_xlat2;
    let x_363 : vec3<f32> = (vec3<f32>(x_360.x, x_360.z, x_360.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_364 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
    let x_369 : vec4<f32> = u_xlat2;
    let x_371 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_369.x, x_369.y, x_369.z));
    u_xlat2 = x_371;
    u_xlat1.w = 1.0f;
    let x_373 : vec4<f32> = u_xlat3;
    let x_374 : vec4<f32> = u_xlat1;
    u_xlat3.x = dot(x_373, x_374);
    let x_377 : vec4<f32> = u_xlat4;
    let x_378 : vec4<f32> = u_xlat1;
    u_xlat3.y = dot(x_377, x_378);
    let x_381 : vec4<f32> = u_xlat2;
    let x_382 : vec4<f32> = u_xlat1;
    u_xlat3.z = dot(x_381, x_382);
  } else {
    u_xlat1.w = 1.0f;
    let x_388 : vec4<f32> = x_36.unity_SHAr;
    let x_389 : vec4<f32> = u_xlat1;
    u_xlat3.x = dot(x_388, x_389);
    let x_393 : vec4<f32> = x_36.unity_SHAg;
    let x_394 : vec4<f32> = u_xlat1;
    u_xlat3.y = dot(x_393, x_394);
    let x_398 : vec4<f32> = x_36.unity_SHAb;
    let x_399 : vec4<f32> = u_xlat1;
    u_xlat3.z = dot(x_398, x_399);
  }
  let x_402 : vec4<f32> = u_xlat3;
  let x_405 : vec4<f32> = vs_TEXCOORD5;
  let x_407 : vec3<f32> = (vec3<f32>(x_402.x, x_402.y, x_402.z) + vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat2;
  let x_413 : vec3<f32> = max(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_416 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = u_xlat2;
  let x_420 : vec3<f32> = (vec3<f32>(x_416.w, x_416.w, x_416.w) * vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_424 : vec4<f32> = u_xlat0;
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) * vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_432 : vec4<f32> = u_xlat1;
  let x_436 : vec3<f32> = ((vec3<f32>(x_432.x, x_432.y, x_432.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_437 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_440 : vec4<f32> = u_xlat0;
  SV_Target0 = x_440;
  let x_443 : f32 = x_36.x_Glossiness;
  SV_Target1.w = x_443;
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

