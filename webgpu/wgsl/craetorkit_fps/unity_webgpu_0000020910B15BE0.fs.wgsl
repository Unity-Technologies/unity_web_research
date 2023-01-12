struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_284 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  let x_53 : vec3<f32> = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_57 : vec4<f32> = x_46.x_Color;
  let x_59 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_59) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_66) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_75) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.x, x_81.x) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_86.y, x_85.y, x_85.z);
  let x_93 : vec4<f32> = vs_TEXCOORD0;
  let x_95 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.w);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_101 : f32 = u_xlat2.z;
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_101 * x_103);
  let x_106 : vec4<f32> = u_xlat2;
  let x_113 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_121 : f32 = x_46.x_BumpScale;
  let x_123 : vec2<f32> = (vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat22;
  u_xlat22 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat22;
  u_xlat22 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat9;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat22;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat22;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat22;
  let x_193 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_191, x_191, x_191) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_199 : vec3<f32> = vs_TEXCOORD5;
  let x_204 : vec4<f32> = x_46.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_199.y, x_199.y, x_199.y) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_209 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_211 : vec3<f32> = vs_TEXCOORD5;
  let x_214 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_211.x, x_211.x, x_211.x)) + x_214);
  let x_218 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_220 : vec3<f32> = vs_TEXCOORD5;
  let x_223 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_218.x, x_218.y, x_218.z) * vec3<f32>(x_220.z, x_220.z, x_220.z)) + x_223);
  let x_225 : vec3<f32> = u_xlat4;
  let x_228 : vec4<f32> = x_46.unity_WorldToLight[3i];
  u_xlat4 = (x_225 + vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_235 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_235 == 1.0f);
  let x_237 : bool = u_xlatb22;
  if (x_237) {
    let x_242 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_242 == 1.0f);
    let x_245 : vec3<f32> = vs_TEXCOORD5;
    let x_248 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_250 : vec3<f32> = (vec3<f32>(x_245.y, x_245.y, x_245.y) * vec3<f32>(x_248.x, x_248.y, x_248.z));
    let x_251 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
    let x_254 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_256 : vec3<f32> = vs_TEXCOORD5;
    let x_259 : vec4<f32> = u_xlat5;
    let x_261 : vec3<f32> = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * vec3<f32>(x_256.x, x_256.x, x_256.x)) + vec3<f32>(x_259.x, x_259.y, x_259.z));
    let x_262 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
    let x_265 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_267 : vec3<f32> = vs_TEXCOORD5;
    let x_270 : vec4<f32> = u_xlat5;
    let x_272 : vec3<f32> = ((vec3<f32>(x_265.x, x_265.y, x_265.z) * vec3<f32>(x_267.z, x_267.z, x_267.z)) + vec3<f32>(x_270.x, x_270.y, x_270.z));
    let x_273 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_275 : vec4<f32> = u_xlat5;
    let x_278 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_280 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) + vec3<f32>(x_278.x, x_278.y, x_278.z));
    let x_281 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
    let x_283 : bool = u_xlatb22;
    if (x_283) {
      let x_287 : vec4<f32> = u_xlat5;
      x_284 = vec3<f32>(x_287.x, x_287.y, x_287.z);
    } else {
      let x_290 : vec3<f32> = vs_TEXCOORD5;
      x_284 = x_290;
    }
    let x_291 : vec3<f32> = x_284;
    let x_292 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
    let x_294 : vec4<f32> = u_xlat5;
    let x_299 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_301 : vec3<f32> = (vec3<f32>(x_294.x, x_294.y, x_294.z) + -(x_299));
    let x_302 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
    let x_304 : vec4<f32> = u_xlat5;
    let x_307 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_308 : vec3<f32> = (vec3<f32>(x_304.x, x_304.y, x_304.z) * x_307);
    let x_309 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_309.x, x_308.x, x_308.y, x_308.z);
    let x_312 : f32 = u_xlat5.y;
    u_xlat22 = ((x_312 * 0.25f) + 0.75f);
    let x_319 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_319 * 0.5f) + 0.75f);
    let x_323 : f32 = u_xlat22;
    let x_324 : f32 = u_xlat23;
    u_xlat5.x = max(x_323, x_324);
    let x_335 : vec4<f32> = u_xlat5;
    let x_337 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_335.x, x_335.z, x_335.w));
    u_xlat5 = x_337;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_344 : vec4<f32> = u_xlat5;
  let x_346 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_344, x_346);
  let x_348 : f32 = u_xlat22;
  u_xlat22 = clamp(x_348, 0.0f, 1.0f);
  let x_351 : vec3<f32> = u_xlat4;
  let x_352 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_351, x_352);
  let x_359 : f32 = u_xlat23;
  let x_361 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_359, x_359));
  u_xlat23 = x_361.x;
  let x_363 : f32 = u_xlat22;
  let x_364 : f32 = u_xlat23;
  u_xlat22 = (x_363 * x_364);
  let x_368 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_368;
  let x_371 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_371;
  let x_374 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_374;
  let x_376 : vec3<f32> = u_xlat4;
  let x_377 : vec3<f32> = u_xlat4;
  u_xlat23 = dot(x_376, x_377);
  let x_379 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_379);
  let x_381 : f32 = u_xlat23;
  let x_383 : vec3<f32> = u_xlat4;
  let x_384 : vec3<f32> = (vec3<f32>(x_381, x_381, x_381) * x_383);
  let x_385 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_388 : f32 = u_xlat22;
  let x_392 : vec4<f32> = x_46.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_397 : f32 = u_xlat0.y;
  let x_401 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_397) * x_401) + 1.0f);
  let x_404 : vec3<f32> = u_xlat4;
  let x_405 : f32 = u_xlat23;
  let x_408 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_404 * vec3<f32>(x_405, x_405, x_405)) + -(x_408));
  let x_411 : vec3<f32> = u_xlat4;
  let x_412 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_411, x_412);
  let x_414 : f32 = u_xlat22;
  u_xlat22 = max(x_414, 0.001f);
  let x_417 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_417);
  let x_419 : f32 = u_xlat22;
  let x_421 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_419, x_419, x_419) * x_421);
  let x_423 : vec4<f32> = u_xlat2;
  let x_425 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_423.x, x_423.y, x_423.z), -(x_425));
  let x_428 : vec4<f32> = u_xlat2;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_428.x, x_428.y, x_428.z), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : f32 = u_xlat23;
  u_xlat23 = clamp(x_433, 0.0f, 1.0f);
  let x_435 : vec4<f32> = u_xlat2;
  let x_437 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_435.x, x_435.y, x_435.z), x_437);
  let x_441 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_441, 0.0f, 1.0f);
  let x_444 : vec4<f32> = u_xlat5;
  let x_446 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), x_446);
  let x_450 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_450, 0.0f, 1.0f);
  let x_455 : f32 = u_xlat9.x;
  let x_457 : f32 = u_xlat9.x;
  u_xlat16 = (x_455 * x_457);
  let x_459 : f32 = u_xlat16;
  let x_461 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_459, x_459), vec2<f32>(x_461, x_461));
  let x_464 : f32 = u_xlat16;
  u_xlat16 = (x_464 + -0.5f);
  let x_467 : f32 = u_xlat23;
  u_xlat3.x = (-(x_467) + 1.0f);
  let x_473 : f32 = u_xlat3.x;
  let x_475 : f32 = u_xlat3.x;
  u_xlat10 = (x_473 * x_475);
  let x_477 : f32 = u_xlat10;
  let x_478 : f32 = u_xlat10;
  u_xlat10 = (x_477 * x_478);
  let x_481 : f32 = u_xlat3.x;
  let x_482 : f32 = u_xlat10;
  u_xlat3.x = (x_481 * x_482);
  let x_485 : f32 = u_xlat16;
  let x_487 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_485 * x_487) + 1.0f);
  let x_491 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_491)) + 1.0f);
  let x_496 : f32 = u_xlat10;
  let x_497 : f32 = u_xlat10;
  u_xlat17 = (x_496 * x_497);
  let x_499 : f32 = u_xlat17;
  let x_500 : f32 = u_xlat17;
  u_xlat17 = (x_499 * x_500);
  let x_502 : f32 = u_xlat10;
  let x_503 : f32 = u_xlat17;
  u_xlat10 = (x_502 * x_503);
  let x_505 : f32 = u_xlat16;
  let x_506 : f32 = u_xlat10;
  u_xlat16 = ((x_505 * x_506) + 1.0f);
  let x_509 : f32 = u_xlat16;
  let x_511 : f32 = u_xlat3.x;
  u_xlat16 = (x_509 * x_511);
  let x_513 : f32 = u_xlat23;
  let x_514 : f32 = u_xlat16;
  u_xlat16 = (x_513 * x_514);
  let x_516 : f32 = u_xlat7;
  let x_517 : f32 = u_xlat7;
  u_xlat7 = (x_516 * x_517);
  let x_519 : f32 = u_xlat7;
  u_xlat7 = max(x_519, 0.002f);
  let x_522 : f32 = u_xlat7;
  u_xlat3.x = (-(x_522) + 1.0f);
  let x_526 : f32 = u_xlat22;
  let x_529 : f32 = u_xlat3.x;
  let x_531 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_526) * x_529) + x_531);
  let x_533 : f32 = u_xlat23;
  let x_535 : f32 = u_xlat3.x;
  let x_537 : f32 = u_xlat7;
  u_xlat3.x = ((x_533 * x_535) + x_537);
  let x_540 : f32 = u_xlat22;
  let x_543 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_540) * x_543);
  let x_545 : f32 = u_xlat23;
  let x_546 : f32 = u_xlat10;
  let x_548 : f32 = u_xlat22;
  u_xlat22 = ((x_545 * x_546) + x_548);
  let x_550 : f32 = u_xlat22;
  u_xlat22 = (x_550 + 0.00001f);
  let x_553 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_553);
  let x_555 : f32 = u_xlat7;
  let x_556 : f32 = u_xlat7;
  u_xlat7 = (x_555 * x_556);
  let x_559 : f32 = u_xlat2.x;
  let x_560 : f32 = u_xlat7;
  let x_563 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_559 * x_560) + -(x_563));
  let x_568 : f32 = u_xlat3.x;
  let x_570 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_568 * x_570) + 1.0f);
  let x_574 : f32 = u_xlat7;
  u_xlat7 = (x_574 * 0.318309873f);
  let x_578 : f32 = u_xlat2.x;
  let x_580 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_578 * x_580) + 0.0000001f);
  let x_585 : f32 = u_xlat7;
  let x_587 : f32 = u_xlat2.x;
  u_xlat7 = (x_585 / x_587);
  let x_589 : f32 = u_xlat7;
  let x_590 : f32 = u_xlat22;
  u_xlat7 = (x_589 * x_590);
  let x_592 : f32 = u_xlat23;
  let x_593 : f32 = u_xlat7;
  u_xlat7 = (x_592 * x_593);
  let x_595 : f32 = u_xlat7;
  u_xlat7 = (x_595 * 3.141592741f);
  let x_598 : f32 = u_xlat7;
  u_xlat7 = max(x_598, 0.0f);
  let x_600 : vec3<f32> = u_xlat1;
  let x_601 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_600, x_601);
  let x_603 : f32 = u_xlat22;
  u_xlatb22 = !((x_603 == 0.0f));
  let x_605 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_605);
  let x_607 : f32 = u_xlat7;
  let x_608 : f32 = u_xlat22;
  u_xlat7 = (x_607 * x_608);
  let x_610 : f32 = u_xlat16;
  let x_612 : vec3<f32> = u_xlat6;
  let x_613 : vec3<f32> = (vec3<f32>(x_610, x_610, x_610) * x_612);
  let x_614 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_613.x, x_614.y, x_613.y, x_613.z);
  let x_616 : vec3<f32> = u_xlat6;
  let x_617 : f32 = u_xlat7;
  u_xlat3 = (x_616 * vec3<f32>(x_617, x_617, x_617));
  let x_621 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_621) + 1.0f);
  let x_624 : f32 = u_xlat7;
  let x_625 : f32 = u_xlat7;
  u_xlat22 = (x_624 * x_625);
  let x_627 : f32 = u_xlat22;
  let x_628 : f32 = u_xlat22;
  u_xlat22 = (x_627 * x_628);
  let x_630 : f32 = u_xlat7;
  let x_631 : f32 = u_xlat22;
  u_xlat7 = (x_630 * x_631);
  let x_633 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_633) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_637 : vec3<f32> = u_xlat4;
  let x_638 : f32 = u_xlat7;
  let x_641 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_637 * vec3<f32>(x_638, x_638, x_638)) + x_641);
  let x_643 : vec3<f32> = u_xlat1;
  let x_644 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_643 * x_644);
  let x_648 : vec4<f32> = u_xlat0;
  let x_650 : vec4<f32> = u_xlat2;
  let x_653 : vec3<f32> = u_xlat1;
  let x_654 : vec3<f32> = ((vec3<f32>(x_648.x, x_648.z, x_648.w) * vec3<f32>(x_650.x, x_650.z, x_650.w)) + x_653);
  let x_655 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

