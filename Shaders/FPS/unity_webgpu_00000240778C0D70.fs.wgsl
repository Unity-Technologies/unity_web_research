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
  @size(12)
  padding_2 : u32,
  x_EmissionColor : vec3<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_Cutoff : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_30 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> u_xlat22 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_EmissionMap : sampler;

var<private> u_xlat21 : f32;

var<private> u_xlatb21 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat6 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_256 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD3;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.x_Color;
  u_xlat0 = (x_25 * x_35);
  let x_39 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (vec3<f32>(x_39.x, x_39.y, x_39.z) * vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_52 : vec2<f32> = vs_TEXCOORD3;
  let x_53 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_52);
  let x_54 : vec3<f32> = vec3<f32>(x_53.x, x_53.y, x_53.w);
  let x_55 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_54.x, x_54.y, x_54.z, x_55.w);
  let x_61 : f32 = u_xlat2.z;
  let x_64 : f32 = u_xlat2.x;
  u_xlat2.x = (x_61 * x_64);
  let x_67 : vec4<f32> = u_xlat2;
  let x_74 : vec2<f32> = ((vec2<f32>(x_67.x, x_67.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_77 : vec4<f32> = u_xlat2;
  let x_82 : f32 = x_30.x_BumpScale;
  let x_84 : vec2<f32> = (vec2<f32>(x_77.x, x_77.y) * vec2<f32>(x_82, x_82));
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_84.x, x_84.y, x_85.z, x_85.w);
  let x_88 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_88.x, x_88.y), vec2<f32>(x_90.x, x_90.y));
  let x_93 : f32 = u_xlat22;
  u_xlat22 = min(x_93, 1.0f);
  let x_96 : f32 = u_xlat22;
  u_xlat22 = (-(x_96) + 1.0f);
  let x_99 : f32 = u_xlat22;
  u_xlat2.z = sqrt(x_99);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_102.x, x_102.y, x_102.z), vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_107);
  let x_109 : f32 = u_xlat22;
  let x_111 : vec4<f32> = u_xlat2;
  let x_113 : vec3<f32> = (vec3<f32>(x_109, x_109, x_109) * vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_122 : vec2<f32> = vs_TEXCOORD3;
  let x_123 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_122);
  u_xlat3 = vec3<f32>(x_123.x, x_123.y, x_123.z);
  let x_128 : f32 = u_xlat0.w;
  let x_131 : f32 = vs_COLOR0.w;
  let x_135 : f32 = x_30.x_Cutoff;
  u_xlat21 = ((x_128 * x_131) + -(x_135));
  let x_138 : f32 = u_xlat21;
  u_xlat21 = (x_138 + 0.0001f);
  let x_144 : f32 = u_xlat21;
  u_xlatb21 = (x_144 < 0.0f);
  let x_147 : bool = u_xlatb21;
  if (((select(0i, 1i, x_147) * -1i) != 0i)) {
    discard;
  }
  let x_159 : vec4<f32> = vs_TEXCOORD0;
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_159.x, x_159.y, x_159.z), vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_166 : vec4<f32> = vs_TEXCOORD1;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_174 : vec4<f32> = vs_TEXCOORD2;
  let x_176 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat4;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_185);
  let x_187 : f32 = u_xlat21;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_196 : f32 = x_30.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_196 == 1.0f);
  let x_198 : bool = u_xlatb21;
  if (x_198) {
    let x_202 : f32 = x_30.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_202 == 1.0f);
    let x_204 : vec4<f32> = vs_TEXCOORD1;
    let x_208 : vec4<f32> = x_30.unity_ProbeVolumeWorldToObject[1i];
    let x_210 : vec3<f32> = (vec3<f32>(x_204.w, x_204.w, x_204.w) * vec3<f32>(x_208.x, x_208.y, x_208.z));
    let x_211 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
    let x_214 : vec4<f32> = x_30.unity_ProbeVolumeWorldToObject[0i];
    let x_216 : vec4<f32> = vs_TEXCOORD0;
    let x_219 : vec4<f32> = u_xlat4;
    let x_221 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.w, x_216.w, x_216.w)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
    let x_222 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_226 : vec4<f32> = x_30.unity_ProbeVolumeWorldToObject[2i];
    let x_228 : vec4<f32> = vs_TEXCOORD2;
    let x_231 : vec4<f32> = u_xlat4;
    let x_233 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.w, x_228.w, x_228.w)) + vec3<f32>(x_231.x, x_231.y, x_231.z));
    let x_234 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_236 : vec4<f32> = u_xlat4;
    let x_239 : vec4<f32> = x_30.unity_ProbeVolumeWorldToObject[3i];
    let x_241 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) + vec3<f32>(x_239.x, x_239.y, x_239.z));
    let x_242 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_246 : f32 = vs_TEXCOORD0.w;
    u_xlat12.x = x_246;
    let x_249 : f32 = vs_TEXCOORD1.w;
    u_xlat12.y = x_249;
    let x_252 : f32 = vs_TEXCOORD2.w;
    u_xlat12.z = x_252;
    let x_254 : bool = u_xlatb21;
    if (x_254) {
      let x_259 : vec4<f32> = u_xlat4;
      x_256 = vec3<f32>(x_259.x, x_259.y, x_259.z);
    } else {
      let x_262 : vec3<f32> = u_xlat12;
      x_256 = x_262;
    }
    let x_263 : vec3<f32> = x_256;
    let x_264 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
    let x_266 : vec4<f32> = u_xlat4;
    let x_271 : vec3<f32> = x_30.unity_ProbeVolumeMin;
    let x_273 : vec3<f32> = (vec3<f32>(x_266.x, x_266.y, x_266.z) + -(x_271));
    let x_274 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_276 : vec4<f32> = u_xlat4;
    let x_280 : vec3<f32> = x_30.unity_ProbeVolumeSizeInv;
    let x_281 : vec3<f32> = (vec3<f32>(x_276.x, x_276.y, x_276.z) * x_280);
    let x_282 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_282.x, x_281.x, x_281.y, x_281.z);
    let x_285 : f32 = u_xlat4.y;
    u_xlat21 = (x_285 * 0.25f);
    let x_289 : f32 = x_30.unity_ProbeVolumeParams.z;
    u_xlat22 = (x_289 * 0.5f);
    let x_294 : f32 = x_30.unity_ProbeVolumeParams.z;
    u_xlat24 = ((-(x_294) * 0.5f) + 0.25f);
    let x_298 : f32 = u_xlat21;
    let x_299 : f32 = u_xlat22;
    u_xlat21 = max(x_298, x_299);
    let x_301 : f32 = u_xlat24;
    let x_302 : f32 = u_xlat21;
    u_xlat4.x = min(x_301, x_302);
    let x_314 : vec4<f32> = u_xlat4;
    let x_316 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_314.x, x_314.z, x_314.w));
    u_xlat5 = x_316;
    let x_318 : vec4<f32> = u_xlat4;
    let x_321 : vec3<f32> = (vec3<f32>(x_318.x, x_318.z, x_318.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_322 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
    let x_327 : vec4<f32> = u_xlat6;
    let x_329 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_327.x, x_327.y, x_327.z));
    u_xlat6 = x_329;
    let x_330 : vec4<f32> = u_xlat4;
    let x_333 : vec3<f32> = (vec3<f32>(x_330.x, x_330.z, x_330.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_334 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_339 : vec4<f32> = u_xlat4;
    let x_341 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_339.x, x_339.y, x_339.z));
    u_xlat4 = x_341;
    u_xlat2.w = 1.0f;
    let x_343 : vec4<f32> = u_xlat5;
    let x_344 : vec4<f32> = u_xlat2;
    u_xlat5.x = dot(x_343, x_344);
    let x_347 : vec4<f32> = u_xlat6;
    let x_348 : vec4<f32> = u_xlat2;
    u_xlat5.y = dot(x_347, x_348);
    let x_351 : vec4<f32> = u_xlat4;
    let x_352 : vec4<f32> = u_xlat2;
    u_xlat5.z = dot(x_351, x_352);
  } else {
    u_xlat2.w = 1.0f;
    let x_358 : vec4<f32> = x_30.unity_SHAr;
    let x_359 : vec4<f32> = u_xlat2;
    u_xlat5.x = dot(x_358, x_359);
    let x_363 : vec4<f32> = x_30.unity_SHAg;
    let x_364 : vec4<f32> = u_xlat2;
    u_xlat5.y = dot(x_363, x_364);
    let x_368 : vec4<f32> = x_30.unity_SHAb;
    let x_369 : vec4<f32> = u_xlat2;
    u_xlat5.z = dot(x_368, x_369);
  }
  let x_372 : vec4<f32> = u_xlat5;
  let x_376 : vec3<f32> = vs_TEXCOORD6;
  let x_377 : vec3<f32> = (vec3<f32>(x_372.x, x_372.y, x_372.z) + x_376);
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec4<f32> = u_xlat4;
  let x_383 : vec3<f32> = max(vec3<f32>(x_380.x, x_380.y, x_380.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = vs_COLOR0;
  let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.y, x_386.z) * vec3<f32>(x_388.x, x_388.y, x_388.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_394 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_400 : f32 = x_30.x_Metallic;
  let x_402 : vec4<f32> = u_xlat0;
  let x_407 : vec3<f32> = ((vec3<f32>(x_400, x_400, x_400) * vec3<f32>(x_402.x, x_402.y, x_402.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_408 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_411 : f32 = x_30.x_Metallic;
  u_xlat0.x = ((-(x_411) * 0.959999979f) + 0.959999979f);
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : vec3<f32> = u_xlat1;
  let x_420 : vec3<f32> = (vec3<f32>(x_417.x, x_417.x, x_417.x) * x_419);
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat4;
  let x_425 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_429 : vec4<f32> = u_xlat2;
  let x_433 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_434 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec3<f32> = u_xlat3;
  let x_439 : f32 = x_30.x_EmissionColor.x;
  let x_441 : f32 = x_30.x_EmissionColor.y;
  let x_443 : f32 = x_30.x_EmissionColor.z;
  let x_446 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_436 * vec3<f32>(x_439, x_441, x_443)) + x_446);
  let x_449 : vec3<f32> = u_xlat1;
  let x_451 : vec3<f32> = exp2(-(x_449));
  let x_452 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : vec4<f32> = u_xlat0;
  let x_456 : vec3<f32> = vec3<f32>(x_455.x, x_455.y, x_455.z);
  let x_457 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  SV_Target0.w = 1.0f;
  let x_463 : f32 = x_30.x_Glossiness;
  SV_Target1.w = x_463;
  SV_Target2.w = 1.0f;
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD3_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target2, SV_Target3, SV_Target0);
}

