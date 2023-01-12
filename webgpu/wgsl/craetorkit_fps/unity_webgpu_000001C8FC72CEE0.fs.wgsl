struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(8) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_221 : vec3<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_60);
  let x_62 : vec2<f32> = vec2<f32>(x_61.x, x_61.w);
  let x_63 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_62.x, x_62.y, x_63.z);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_71);
  u_xlat4 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_77 : f32 = u_xlat4.z;
  let x_80 : f32 = u_xlat4.x;
  u_xlat4.x = (x_77 * x_80);
  let x_83 : vec3<f32> = u_xlat4;
  let x_90 : vec2<f32> = ((vec2<f32>(x_83.x, x_83.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_90.x, x_90.y, x_91.z);
  let x_94 : vec3<f32> = u_xlat4;
  let x_96 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(vec2<f32>(x_94.x, x_94.y), vec2<f32>(x_96.x, x_96.y));
  let x_99 : f32 = u_xlat22;
  u_xlat22 = min(x_99, 1.0f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = (-(x_102) + 1.0f);
  let x_105 : f32 = u_xlat22;
  u_xlat4.z = sqrt(x_105);
  let x_113 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_113;
  let x_117 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_117;
  let x_122 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_122;
  let x_124 : vec3<f32> = u_xlat0;
  let x_125 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(x_124, vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec3<f32> = vs_TEXCOORD4;
  let x_132 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_135 : vec3<f32> = (x_128 + -(vec3<f32>(x_132.x, x_132.y, x_132.z)));
  let x_136 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = u_xlat5;
  let x_141 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_139.x, x_139.y, x_139.z), vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_144);
  let x_146 : f32 = u_xlat22;
  let x_148 : f32 = u_xlat23;
  u_xlat23 = (-(x_146) + x_148);
  let x_152 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_153 : f32 = u_xlat23;
  let x_155 : f32 = u_xlat22;
  u_xlat22 = ((x_152 * x_153) + x_155);
  let x_157 : f32 = u_xlat22;
  let x_160 : f32 = x_18.x_LightShadowData.z;
  let x_163 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_157 * x_160) + x_163);
  let x_165 : f32 = u_xlat22;
  u_xlat22 = clamp(x_165, 0.0f, 1.0f);
  let x_173 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_173 == 1.0f);
  let x_175 : bool = u_xlatb23;
  if (x_175) {
    let x_179 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_179 == 1.0f);
    let x_181 : vec3<f32> = vs_TEXCOORD4;
    let x_185 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_187 : vec3<f32> = (vec3<f32>(x_181.y, x_181.y, x_181.y) * vec3<f32>(x_185.x, x_185.y, x_185.z));
    let x_188 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
    let x_191 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_193 : vec3<f32> = vs_TEXCOORD4;
    let x_196 : vec4<f32> = u_xlat5;
    let x_198 : vec3<f32> = ((vec3<f32>(x_191.x, x_191.y, x_191.z) * vec3<f32>(x_193.x, x_193.x, x_193.x)) + vec3<f32>(x_196.x, x_196.y, x_196.z));
    let x_199 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
    let x_202 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_204 : vec3<f32> = vs_TEXCOORD4;
    let x_207 : vec4<f32> = u_xlat5;
    let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.z, x_204.z, x_204.z)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
    let x_210 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
    let x_212 : vec4<f32> = u_xlat5;
    let x_215 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_217 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) + vec3<f32>(x_215.x, x_215.y, x_215.z));
    let x_218 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_220 : bool = u_xlatb23;
    if (x_220) {
      let x_224 : vec4<f32> = u_xlat5;
      x_221 = vec3<f32>(x_224.x, x_224.y, x_224.z);
    } else {
      let x_227 : vec3<f32> = vs_TEXCOORD4;
      x_221 = x_227;
    }
    let x_228 : vec3<f32> = x_221;
    let x_229 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
    let x_231 : vec4<f32> = u_xlat5;
    let x_235 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_237 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) + -(x_235));
    let x_238 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : vec4<f32> = u_xlat5;
    let x_244 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_245 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) * x_244);
    let x_246 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_246.x, x_245.x, x_245.y, x_245.z);
    let x_249 : f32 = u_xlat5.y;
    u_xlat23 = ((x_249 * 0.25f) + 0.75f);
    let x_257 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat17.x = ((x_257 * 0.5f) + 0.75f);
    let x_262 : f32 = u_xlat23;
    let x_264 : f32 = u_xlat17.x;
    u_xlat5.x = max(x_262, x_264);
    let x_275 : vec4<f32> = u_xlat5;
    let x_277 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_275.x, x_275.z, x_275.w));
    u_xlat5 = x_277;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_283 : vec4<f32> = u_xlat5;
  let x_285 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_283, x_285);
  let x_287 : f32 = u_xlat23;
  u_xlat23 = clamp(x_287, 0.0f, 1.0f);
  let x_291 : vec4<f32> = vs_TEXCOORD6;
  let x_293 : vec4<f32> = vs_TEXCOORD6;
  u_xlat17 = (vec2<f32>(x_291.x, x_291.y) / vec2<f32>(x_293.w, x_293.w));
  let x_301 : vec2<f32> = u_xlat17;
  let x_302 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_301);
  u_xlat17.x = x_302.x;
  let x_305 : f32 = u_xlat23;
  let x_307 : f32 = u_xlat17.x;
  u_xlat23 = (x_305 + -(x_307));
  let x_310 : f32 = u_xlat22;
  let x_311 : f32 = u_xlat23;
  let x_314 : f32 = u_xlat17.x;
  u_xlat22 = ((x_310 * x_311) + x_314);
  let x_317 : vec3<f32> = vs_TEXCOORD1;
  let x_318 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_317, x_318);
  let x_322 : vec3<f32> = vs_TEXCOORD2;
  let x_323 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_322, x_323);
  let x_327 : vec3<f32> = vs_TEXCOORD3;
  let x_328 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_327, x_328);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_336);
  let x_338 : f32 = u_xlat23;
  let x_340 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_338, x_338, x_338) * vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : f32 = u_xlat22;
  let x_347 : vec4<f32> = x_18.x_LightColor0;
  let x_349 : vec3<f32> = (vec3<f32>(x_343, x_343, x_343) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec3<f32> = u_xlat2;
  u_xlat6 = (x_353 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_357 : vec3<f32> = u_xlat3;
  let x_359 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_357.x, x_357.x, x_357.x) * x_359) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_365 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_365) * 0.959999979f) + 0.959999979f);
  let x_370 : f32 = u_xlat22;
  let x_372 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_370, x_370, x_370) * x_372);
  let x_375 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_375) + 1.0f);
  let x_378 : vec3<f32> = u_xlat0;
  let x_379 : f32 = u_xlat21;
  let x_383 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_378 * vec3<f32>(x_379, x_379, x_379)) + vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec3<f32> = u_xlat0;
  let x_387 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_386, x_387);
  let x_389 : f32 = u_xlat21;
  u_xlat21 = max(x_389, 0.001f);
  let x_392 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_392);
  let x_394 : f32 = u_xlat21;
  let x_396 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_394, x_394, x_394) * x_396);
  let x_398 : vec3<f32> = u_xlat4;
  let x_399 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_398, x_399);
  let x_401 : vec3<f32> = u_xlat4;
  let x_403 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_401, vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_408 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_408, 0.0f, 1.0f);
  let x_412 : vec3<f32> = u_xlat4;
  let x_413 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_412, x_413);
  let x_415 : f32 = u_xlat8;
  u_xlat8 = clamp(x_415, 0.0f, 1.0f);
  let x_418 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_420 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_418.x, x_418.y, x_418.z), x_420);
  let x_424 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_424, 0.0f, 1.0f);
  let x_429 : f32 = u_xlat0.x;
  let x_431 : f32 = u_xlat0.x;
  u_xlat7.x = (x_429 * x_431);
  let x_434 : vec3<f32> = u_xlat7;
  let x_436 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_434.x, x_434.x), vec2<f32>(x_436, x_436));
  let x_441 : f32 = u_xlat7.x;
  u_xlat7.x = (x_441 + -0.5f);
  let x_447 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_447) + 1.0f);
  let x_451 : f32 = u_xlat14;
  let x_452 : f32 = u_xlat14;
  u_xlat15 = (x_451 * x_452);
  let x_454 : f32 = u_xlat15;
  let x_455 : f32 = u_xlat15;
  u_xlat15 = (x_454 * x_455);
  let x_457 : f32 = u_xlat14;
  let x_458 : f32 = u_xlat15;
  u_xlat14 = (x_457 * x_458);
  let x_461 : f32 = u_xlat7.x;
  let x_462 : f32 = u_xlat14;
  u_xlat14 = ((x_461 * x_462) + 1.0f);
  let x_465 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_465)) + 1.0f);
  let x_469 : f32 = u_xlat15;
  let x_470 : f32 = u_xlat15;
  u_xlat23 = (x_469 * x_470);
  let x_472 : f32 = u_xlat23;
  let x_473 : f32 = u_xlat23;
  u_xlat23 = (x_472 * x_473);
  let x_475 : f32 = u_xlat15;
  let x_476 : f32 = u_xlat23;
  u_xlat15 = (x_475 * x_476);
  let x_479 : f32 = u_xlat7.x;
  let x_480 : f32 = u_xlat15;
  u_xlat7.x = ((x_479 * x_480) + 1.0f);
  let x_485 : f32 = u_xlat7.x;
  let x_486 : f32 = u_xlat14;
  u_xlat7.x = (x_485 * x_486);
  let x_489 : f32 = u_xlat22;
  let x_490 : f32 = u_xlat22;
  u_xlat14 = (x_489 * x_490);
  let x_492 : f32 = u_xlat14;
  u_xlat14 = max(x_492, 0.002f);
  let x_495 : f32 = u_xlat14;
  u_xlat15 = (-(x_495) + 1.0f);
  let x_498 : f32 = u_xlat21;
  let x_500 : f32 = u_xlat15;
  let x_502 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_498) * x_500) + x_502);
  let x_505 : f32 = u_xlat1.x;
  let x_506 : f32 = u_xlat15;
  let x_508 : f32 = u_xlat14;
  u_xlat15 = ((x_505 * x_506) + x_508);
  let x_510 : f32 = u_xlat21;
  let x_512 : f32 = u_xlat15;
  u_xlat21 = (abs(x_510) * x_512);
  let x_515 : f32 = u_xlat1.x;
  let x_516 : f32 = u_xlat22;
  let x_518 : f32 = u_xlat21;
  u_xlat21 = ((x_515 * x_516) + x_518);
  let x_520 : f32 = u_xlat21;
  u_xlat21 = (x_520 + 0.00001f);
  let x_523 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_523);
  let x_525 : f32 = u_xlat14;
  let x_526 : f32 = u_xlat14;
  u_xlat14 = (x_525 * x_526);
  let x_528 : f32 = u_xlat8;
  let x_529 : f32 = u_xlat14;
  let x_531 : f32 = u_xlat8;
  u_xlat15 = ((x_528 * x_529) + -(x_531));
  let x_534 : f32 = u_xlat15;
  let x_535 : f32 = u_xlat8;
  u_xlat8 = ((x_534 * x_535) + 1.0f);
  let x_538 : f32 = u_xlat14;
  u_xlat14 = (x_538 * 0.318309873f);
  let x_541 : f32 = u_xlat8;
  let x_542 : f32 = u_xlat8;
  u_xlat8 = ((x_541 * x_542) + 0.0000001f);
  let x_546 : f32 = u_xlat14;
  let x_547 : f32 = u_xlat8;
  u_xlat14 = (x_546 / x_547);
  let x_549 : f32 = u_xlat14;
  let x_550 : f32 = u_xlat21;
  u_xlat7.y = (x_549 * x_550);
  let x_553 : vec3<f32> = u_xlat1;
  let x_555 : vec3<f32> = u_xlat7;
  let x_557 : vec2<f32> = (vec2<f32>(x_553.x, x_553.x) * vec2<f32>(x_555.x, x_555.y));
  let x_558 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_557.x, x_557.y, x_558.z);
  let x_561 : f32 = u_xlat7.y;
  u_xlat14 = (x_561 * 3.141592741f);
  let x_564 : f32 = u_xlat14;
  u_xlat14 = max(x_564, 0.0f);
  let x_566 : vec3<f32> = u_xlat6;
  let x_567 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_566, x_567);
  let x_570 : f32 = u_xlat21;
  u_xlatb21 = !((x_570 == 0.0f));
  let x_572 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_572);
  let x_574 : f32 = u_xlat21;
  let x_575 : f32 = u_xlat14;
  u_xlat14 = (x_574 * x_575);
  let x_577 : vec3<f32> = u_xlat7;
  let x_579 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_577.x, x_577.x, x_577.x) * vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat5;
  let x_584 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(x_584, x_584, x_584));
  let x_588 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_588) + 1.0f);
  let x_593 : f32 = u_xlat0.x;
  let x_595 : f32 = u_xlat0.x;
  u_xlat22 = (x_593 * x_595);
  let x_597 : f32 = u_xlat22;
  let x_598 : f32 = u_xlat22;
  u_xlat22 = (x_597 * x_598);
  let x_601 : f32 = u_xlat0.x;
  let x_602 : f32 = u_xlat22;
  u_xlat0.x = (x_601 * x_602);
  let x_605 : vec3<f32> = u_xlat6;
  u_xlat3 = (-(x_605) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_609 : vec3<f32> = u_xlat3;
  let x_610 : vec3<f32> = u_xlat0;
  let x_613 : vec3<f32> = u_xlat6;
  u_xlat3 = ((x_609 * vec3<f32>(x_610.x, x_610.x, x_610.x)) + x_613);
  let x_615 : vec3<f32> = u_xlat7;
  let x_616 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_615 * x_616);
  let x_620 : vec3<f32> = u_xlat2;
  let x_621 : vec3<f32> = u_xlat1;
  let x_623 : vec3<f32> = u_xlat0;
  let x_624 : vec3<f32> = ((x_620 * x_621) + x_623);
  let x_625 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

