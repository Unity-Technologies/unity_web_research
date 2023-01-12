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
  x_GlossMapScale : f32,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat28 : f32;
  var u_xlatb18 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat14 : vec3<f32>;
  var x_213 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = vec2<f32>(x_25.x, x_25.w);
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  let x_37 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_35.x, x_35.y));
  u_xlat1 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_40 : vec3<f32> = u_xlat1;
  let x_49 : vec4<f32> = x_44.x_Color;
  u_xlat2 = (x_40 * vec3<f32>(x_49.x, x_49.y, x_49.z));
  let x_53 : vec4<f32> = x_44.x_Color;
  let x_55 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * x_55) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_60 : vec2<f32> = u_xlat0;
  let x_62 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_71) * 0.959999979f) + 0.959999979f);
  let x_77 : vec2<f32> = u_xlat0;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_77.x, x_77.x, x_77.x) * x_79);
  let x_87 : vec4<f32> = vs_TEXCOORD0;
  let x_89 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_87.x, x_87.y));
  u_xlat3 = vec3<f32>(x_89.x, x_89.y, x_89.w);
  let x_93 : f32 = u_xlat3.z;
  let x_95 : f32 = u_xlat3.x;
  u_xlat3.x = (x_93 * x_95);
  let x_99 : vec3<f32> = u_xlat3;
  u_xlat18 = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_108 : vec2<f32> = u_xlat18;
  let x_109 : vec2<f32> = u_xlat18;
  u_xlat28 = dot(x_108, x_109);
  let x_111 : f32 = u_xlat28;
  u_xlat28 = min(x_111, 1.0f);
  let x_114 : f32 = u_xlat28;
  u_xlat28 = (-(x_114) + 1.0f);
  let x_117 : f32 = u_xlat28;
  u_xlat28 = sqrt(x_117);
  let x_119 : vec2<f32> = u_xlat18;
  let x_122 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_119.y, x_119.y, x_119.y) * vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_126 : vec4<f32> = vs_TEXCOORD2;
  let x_128 : vec2<f32> = u_xlat18;
  let x_131 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_126.x, x_126.y, x_126.z) * vec3<f32>(x_128.x, x_128.x, x_128.x)) + x_131);
  let x_134 : vec4<f32> = vs_TEXCOORD4;
  let x_136 : f32 = u_xlat28;
  let x_139 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_134.x, x_134.y, x_134.z) * vec3<f32>(x_136, x_136, x_136)) + x_139);
  let x_147 : f32 = x_44.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_147 == 1.0f);
  let x_149 : bool = u_xlatb18;
  if (x_149) {
    let x_154 : f32 = x_44.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_154 == 1.0f);
    let x_158 : vec4<f32> = vs_TEXCOORD3;
    let x_163 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[1i];
    let x_165 : vec3<f32> = (vec3<f32>(x_158.w, x_158.w, x_158.w) * vec3<f32>(x_163.x, x_163.y, x_163.z));
    let x_166 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
    let x_170 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[0i];
    let x_172 : vec4<f32> = vs_TEXCOORD2;
    let x_175 : vec4<f32> = u_xlat4;
    let x_177 : vec3<f32> = ((vec3<f32>(x_170.x, x_170.y, x_170.z) * vec3<f32>(x_172.w, x_172.w, x_172.w)) + vec3<f32>(x_175.x, x_175.y, x_175.z));
    let x_178 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
    let x_182 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[2i];
    let x_184 : vec4<f32> = vs_TEXCOORD4;
    let x_187 : vec4<f32> = u_xlat4;
    let x_189 : vec3<f32> = ((vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.w, x_184.w, x_184.w)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
    let x_190 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat4;
    let x_195 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[3i];
    let x_197 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + vec3<f32>(x_195.x, x_195.y, x_195.z));
    let x_198 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_197.x, x_197.y, x_197.z, x_198.w);
    let x_204 : f32 = vs_TEXCOORD2.w;
    u_xlat14.x = x_204;
    let x_207 : f32 = vs_TEXCOORD3.w;
    u_xlat14.y = x_207;
    let x_210 : f32 = vs_TEXCOORD4.w;
    u_xlat14.z = x_210;
    let x_212 : bool = u_xlatb18;
    if (x_212) {
      let x_216 : vec4<f32> = u_xlat4;
      x_213 = vec3<f32>(x_216.x, x_216.y, x_216.z);
    } else {
      let x_219 : vec3<f32> = u_xlat14;
      x_213 = x_219;
    }
    let x_220 : vec3<f32> = x_213;
    let x_221 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
    let x_223 : vec4<f32> = u_xlat4;
    let x_228 : vec3<f32> = x_44.unity_ProbeVolumeMin;
    let x_230 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) + -(x_228));
    let x_231 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_233 : vec4<f32> = u_xlat4;
    let x_237 : vec3<f32> = x_44.unity_ProbeVolumeSizeInv;
    let x_238 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) * x_237);
    let x_239 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_239.x, x_238.x, x_238.y, x_238.z);
    let x_242 : f32 = u_xlat4.y;
    u_xlat18.x = ((x_242 * 0.25f) + 0.75f);
    let x_250 : f32 = x_44.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_250 * 0.5f) + 0.75f);
    let x_254 : f32 = u_xlat27;
    let x_256 : f32 = u_xlat18.x;
    u_xlat4.x = max(x_254, x_256);
    let x_267 : vec4<f32> = u_xlat4;
    let x_269 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_267.x, x_267.z, x_267.w));
    u_xlat4 = x_269;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_275 : vec4<f32> = u_xlat4;
  let x_277 : vec4<f32> = x_44.unity_OcclusionMaskSelector;
  u_xlat18.x = dot(x_275, x_277);
  let x_281 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_281, 0.0f, 1.0f);
  let x_290 : vec4<f32> = vs_TEXCOORD0;
  let x_292 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_290.x, x_290.y));
  u_xlat27 = x_292.y;
  let x_295 : f32 = u_xlat0.y;
  let x_299 : f32 = x_44.x_GlossMapScale;
  u_xlat4.z = ((-(x_295) * x_299) + 1.0f);
  let x_304 : vec4<f32> = vs_TEXCOORD1;
  let x_306 : vec3<f32> = u_xlat3;
  u_xlat28 = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), x_306);
  let x_308 : f32 = u_xlat28;
  let x_309 : f32 = u_xlat28;
  u_xlat28 = (x_308 + x_309);
  let x_312 : vec3<f32> = u_xlat3;
  let x_313 : f32 = u_xlat28;
  let x_317 : vec4<f32> = vs_TEXCOORD1;
  let x_319 : vec3<f32> = ((x_312 * -(vec3<f32>(x_313, x_313, x_313))) + vec3<f32>(x_317.x, x_317.y, x_317.z));
  let x_320 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_323 : vec2<f32> = u_xlat18;
  let x_327 : vec4<f32> = x_44.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_323.x, x_323.x, x_323.x) * vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : f32 = u_xlat27;
  let x_334 : vec4<f32> = vs_TEXCOORD5;
  u_xlat7 = (vec3<f32>(x_331, x_331, x_331) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_338 : f32 = u_xlat4.z;
  u_xlat18.x = ((-(x_338) * 0.699999988f) + 1.700000048f);
  let x_346 : f32 = u_xlat18.x;
  let x_348 : f32 = u_xlat4.z;
  u_xlat18.x = (x_346 * x_348);
  let x_352 : f32 = u_xlat18.x;
  u_xlat18.x = (x_352 * 6.0f);
  let x_364 : vec4<f32> = u_xlat5;
  let x_367 : f32 = u_xlat18.x;
  let x_368 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_364.x, x_364.y, x_364.z), x_367);
  u_xlat5 = x_368;
  let x_370 : f32 = u_xlat5.w;
  u_xlat18.x = (x_370 + -1.0f);
  let x_374 : f32 = x_44.unity_SpecCube0_HDR.w;
  let x_376 : f32 = u_xlat18.x;
  u_xlat18.x = ((x_374 * x_376) + 1.0f);
  let x_381 : f32 = u_xlat18.x;
  u_xlat18.x = log2(x_381);
  let x_385 : f32 = u_xlat18.x;
  let x_387 : f32 = x_44.unity_SpecCube0_HDR.y;
  u_xlat18.x = (x_385 * x_387);
  let x_391 : f32 = u_xlat18.x;
  u_xlat18.x = exp2(x_391);
  let x_395 : f32 = u_xlat18.x;
  let x_397 : f32 = x_44.unity_SpecCube0_HDR.x;
  u_xlat18.x = (x_395 * x_397);
  let x_400 : vec4<f32> = u_xlat5;
  let x_402 : vec2<f32> = u_xlat18;
  let x_404 : vec3<f32> = (vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.x, x_402.x, x_402.x));
  let x_405 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : f32 = u_xlat27;
  let x_409 : vec4<f32> = u_xlat5;
  let x_411 : vec3<f32> = (vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = vs_TEXCOORD1;
  let x_417 : vec3<f32> = u_xlat3;
  u_xlat18.x = dot(-(vec3<f32>(x_414.x, x_414.y, x_414.z)), x_417);
  let x_421 : f32 = u_xlat18.x;
  let x_423 : f32 = u_xlat18.x;
  u_xlat27 = (x_421 + x_423);
  let x_426 : vec3<f32> = u_xlat3;
  let x_427 : f32 = u_xlat27;
  let x_431 : vec4<f32> = vs_TEXCOORD1;
  u_xlat8 = ((x_426 * -(vec3<f32>(x_427, x_427, x_427))) + -(vec3<f32>(x_431.x, x_431.y, x_431.z)));
  let x_435 : vec3<f32> = u_xlat3;
  let x_437 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  u_xlat27 = dot(x_435, vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_440 : f32 = u_xlat27;
  u_xlat27 = clamp(x_440, 0.0f, 1.0f);
  let x_443 : f32 = u_xlat18.x;
  u_xlat18.x = x_443;
  let x_446 : f32 = u_xlat18.x;
  u_xlat18.x = clamp(x_446, 0.0f, 1.0f);
  let x_449 : vec3<f32> = u_xlat8;
  let x_451 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  u_xlat3.x = dot(x_449, vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_456 : f32 = u_xlat18.x;
  u_xlat3.y = (-(x_456) + 1.0f);
  let x_460 : vec3<f32> = u_xlat3;
  let x_462 : vec3<f32> = u_xlat3;
  let x_464 : vec2<f32> = (vec2<f32>(x_460.x, x_460.y) * vec2<f32>(x_462.x, x_462.y));
  let x_465 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_464.x, x_464.y, x_465.z);
  let x_467 : vec3<f32> = u_xlat3;
  let x_469 : vec3<f32> = u_xlat3;
  let x_471 : vec2<f32> = (vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_469.x, x_469.y));
  let x_472 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
  let x_475 : f32 = u_xlat0.y;
  let x_477 : f32 = x_44.x_GlossMapScale;
  let x_480 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_475 * x_477) + -(x_480));
  let x_485 : f32 = u_xlat0.x;
  u_xlat0.x = (x_485 + 1.0f);
  let x_489 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_489, 0.0f, 1.0f);
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_498.x, x_498.z));
  u_xlat9.x = x_500.x;
  let x_504 : f32 = u_xlat9.x;
  u_xlat9.x = (x_504 * 16.0f);
  let x_508 : vec3<f32> = u_xlat9;
  let x_510 : vec3<f32> = u_xlat1;
  let x_512 : vec3<f32> = u_xlat2;
  u_xlat3 = ((vec3<f32>(x_508.x, x_508.x, x_508.x) * x_510) + x_512);
  let x_514 : f32 = u_xlat27;
  let x_516 : vec3<f32> = u_xlat6;
  u_xlat9 = (vec3<f32>(x_514, x_514, x_514) * x_516);
  let x_518 : vec3<f32> = u_xlat1;
  let x_520 : vec2<f32> = u_xlat0;
  let x_522 : vec3<f32> = (-(x_518) + vec3<f32>(x_520.x, x_520.x, x_520.x));
  let x_523 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_522.x, x_523.y, x_522.y, x_522.z);
  let x_525 : vec4<f32> = u_xlat4;
  let x_527 : vec4<f32> = u_xlat4;
  let x_530 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_525.y, x_525.y, x_525.y) * vec3<f32>(x_527.x, x_527.z, x_527.w)) + x_530);
  let x_532 : vec3<f32> = u_xlat1;
  let x_533 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_532 * vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec3<f32> = u_xlat7;
  let x_537 : vec3<f32> = u_xlat2;
  let x_539 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_536 * x_537) + x_539);
  let x_543 : vec3<f32> = u_xlat3;
  let x_544 : vec3<f32> = u_xlat9;
  let x_546 : vec3<f32> = u_xlat1;
  let x_547 : vec3<f32> = ((x_543 * x_544) + x_546);
  let x_548 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
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

