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

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var x_216 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
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
  u_xlat24 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat24;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat2 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_92 : f32 = u_xlat2.z;
  let x_95 : f32 = u_xlat2.x;
  u_xlat2.x = (x_92 * x_95);
  let x_98 : vec3<f32> = u_xlat2;
  let x_105 : vec2<f32> = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_105.x, x_105.y, x_106.z);
  let x_109 : vec3<f32> = u_xlat2;
  let x_111 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(vec2<f32>(x_109.x, x_109.y), vec2<f32>(x_111.x, x_111.y));
  let x_114 : f32 = u_xlat25;
  u_xlat25 = min(x_114, 1.0f);
  let x_117 : f32 = u_xlat25;
  u_xlat25 = (-(x_117) + 1.0f);
  let x_120 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_120);
  let x_123 : vec3<f32> = u_xlat2;
  let x_126 : vec4<f32> = vs_TEXCOORD3;
  u_xlat10 = (vec3<f32>(x_123.y, x_123.y, x_123.y) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : vec4<f32> = vs_TEXCOORD2;
  let x_132 : vec3<f32> = u_xlat2;
  let x_135 : vec3<f32> = u_xlat10;
  u_xlat2 = ((vec3<f32>(x_130.x, x_130.y, x_130.z) * vec3<f32>(x_132.x, x_132.x, x_132.x)) + x_135);
  let x_138 : vec4<f32> = vs_TEXCOORD4;
  let x_140 : f32 = u_xlat25;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_140, x_140, x_140)) + x_143);
  let x_150 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_150 == 1.0f);
  let x_152 : bool = u_xlatb25;
  if (x_152) {
    let x_157 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_157 == 1.0f);
    let x_161 : vec4<f32> = vs_TEXCOORD3;
    let x_166 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_168 : vec3<f32> = (vec3<f32>(x_161.w, x_161.w, x_161.w) * vec3<f32>(x_166.x, x_166.y, x_166.z));
    let x_169 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_173 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_175 : vec4<f32> = vs_TEXCOORD2;
    let x_178 : vec4<f32> = u_xlat3;
    let x_180 : vec3<f32> = ((vec3<f32>(x_173.x, x_173.y, x_173.z) * vec3<f32>(x_175.w, x_175.w, x_175.w)) + vec3<f32>(x_178.x, x_178.y, x_178.z));
    let x_181 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_185 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_187 : vec4<f32> = vs_TEXCOORD4;
    let x_190 : vec4<f32> = u_xlat3;
    let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.w, x_187.w, x_187.w)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
    let x_193 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat3;
    let x_198 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_200 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + vec3<f32>(x_198.x, x_198.y, x_198.z));
    let x_201 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_207 : f32 = vs_TEXCOORD2.w;
    u_xlat12.x = x_207;
    let x_210 : f32 = vs_TEXCOORD3.w;
    u_xlat12.y = x_210;
    let x_213 : f32 = vs_TEXCOORD4.w;
    u_xlat12.z = x_213;
    let x_215 : bool = u_xlatb25;
    if (x_215) {
      let x_219 : vec4<f32> = u_xlat3;
      x_216 = vec3<f32>(x_219.x, x_219.y, x_219.z);
    } else {
      let x_222 : vec3<f32> = u_xlat12;
      x_216 = x_222;
    }
    let x_223 : vec3<f32> = x_216;
    let x_224 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
    let x_226 : vec4<f32> = u_xlat3;
    let x_231 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_233 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) + -(x_231));
    let x_234 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_236 : vec4<f32> = u_xlat3;
    let x_240 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_241 : vec3<f32> = (vec3<f32>(x_236.x, x_236.y, x_236.z) * x_240);
    let x_242 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_242.x, x_241.x, x_241.y, x_241.z);
    let x_245 : f32 = u_xlat3.y;
    u_xlat25 = ((x_245 * 0.25f) + 0.75f);
    let x_252 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_252 * 0.5f) + 0.75f);
    let x_256 : f32 = u_xlat25;
    let x_257 : f32 = u_xlat26;
    u_xlat3.x = max(x_256, x_257);
    let x_268 : vec4<f32> = u_xlat3;
    let x_270 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_268.x, x_268.z, x_268.w));
    u_xlat3 = x_270;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_276 : vec4<f32> = u_xlat3;
  let x_278 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_276, x_278);
  let x_280 : f32 = u_xlat25;
  u_xlat25 = clamp(x_280, 0.0f, 1.0f);
  let x_288 : vec4<f32> = vs_TEXCOORD0;
  let x_290 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_288.x, x_288.y));
  u_xlat26 = x_290.y;
  let x_294 : f32 = x_33.x_Glossiness;
  let x_296 : f32 = x_33.x_Glossiness;
  let x_297 : vec2<f32> = vec2<f32>(x_294, x_296);
  let x_303 : vec2<f32> = (-(vec2<f32>(x_297.x, x_297.y)) + vec2<f32>(1.0f, 1.0f));
  let x_304 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_303.x, x_304.y, x_304.z, x_303.y);
  let x_308 : vec4<f32> = vs_TEXCOORD1;
  let x_310 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_308.x, x_308.y, x_308.z), x_310);
  let x_314 : f32 = u_xlat4.x;
  let x_316 : f32 = u_xlat4.x;
  u_xlat4.x = (x_314 + x_316);
  let x_319 : vec3<f32> = u_xlat2;
  let x_320 : vec4<f32> = u_xlat4;
  let x_324 : vec4<f32> = vs_TEXCOORD1;
  let x_326 : vec3<f32> = ((x_319 * -(vec3<f32>(x_320.x, x_320.x, x_320.x))) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_330 : f32 = u_xlat25;
  let x_334 : vec4<f32> = x_33.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_330, x_330, x_330) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_338 : f32 = u_xlat26;
  let x_341 : vec4<f32> = vs_TEXCOORD5;
  u_xlat6 = (vec3<f32>(x_338, x_338, x_338) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_345 : f32 = u_xlat3.x;
  u_xlat25 = ((-(x_345) * 0.699999988f) + 1.700000048f);
  let x_351 : f32 = u_xlat25;
  let x_353 : f32 = u_xlat3.x;
  u_xlat25 = (x_351 * x_353);
  let x_355 : f32 = u_xlat25;
  u_xlat25 = (x_355 * 6.0f);
  let x_366 : vec4<f32> = u_xlat4;
  let x_368 : f32 = u_xlat25;
  let x_369 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_366.x, x_366.y, x_366.z), x_368);
  u_xlat4 = x_369;
  let x_371 : f32 = u_xlat4.w;
  u_xlat25 = (x_371 + -1.0f);
  let x_374 : f32 = x_33.unity_SpecCube0_HDR.w;
  let x_375 : f32 = u_xlat25;
  u_xlat25 = ((x_374 * x_375) + 1.0f);
  let x_378 : f32 = u_xlat25;
  u_xlat25 = log2(x_378);
  let x_380 : f32 = u_xlat25;
  let x_382 : f32 = x_33.unity_SpecCube0_HDR.y;
  u_xlat25 = (x_380 * x_382);
  let x_384 : f32 = u_xlat25;
  u_xlat25 = exp2(x_384);
  let x_386 : f32 = u_xlat25;
  let x_388 : f32 = x_33.unity_SpecCube0_HDR.x;
  u_xlat25 = (x_386 * x_388);
  let x_390 : vec4<f32> = u_xlat4;
  let x_392 : f32 = u_xlat25;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.y, x_390.z) * vec3<f32>(x_392, x_392, x_392));
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : f32 = u_xlat26;
  let x_399 : vec4<f32> = u_xlat4;
  let x_401 : vec3<f32> = (vec3<f32>(x_397, x_397, x_397) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_404 : vec4<f32> = vs_TEXCOORD1;
  let x_407 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(-(vec3<f32>(x_404.x, x_404.y, x_404.z)), x_407);
  let x_409 : f32 = u_xlat25;
  let x_410 : f32 = u_xlat25;
  u_xlat26 = (x_409 + x_410);
  let x_413 : vec3<f32> = u_xlat2;
  let x_414 : f32 = u_xlat26;
  let x_418 : vec4<f32> = vs_TEXCOORD1;
  u_xlat7 = ((x_413 * -(vec3<f32>(x_414, x_414, x_414))) + -(vec3<f32>(x_418.x, x_418.y, x_418.z)));
  let x_422 : vec3<f32> = u_xlat2;
  let x_424 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_422, vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_429 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_429, 0.0f, 1.0f);
  let x_432 : f32 = u_xlat25;
  u_xlat25 = x_432;
  let x_433 : f32 = u_xlat25;
  u_xlat25 = clamp(x_433, 0.0f, 1.0f);
  let x_435 : vec3<f32> = u_xlat7;
  let x_437 : vec4<f32> = x_33.x_WorldSpaceLightPos0;
  u_xlat7.x = dot(x_435, vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_441 : f32 = u_xlat25;
  u_xlat7.y = (-(x_441) + 1.0f);
  let x_445 : vec3<f32> = u_xlat7;
  let x_447 : vec3<f32> = u_xlat7;
  let x_449 : vec2<f32> = (vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_447.x, x_447.y));
  let x_450 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_449.x, x_449.y, x_450.z);
  let x_452 : vec3<f32> = u_xlat10;
  let x_454 : vec3<f32> = u_xlat10;
  let x_456 : vec2<f32> = (vec2<f32>(x_452.x, x_452.y) * vec2<f32>(x_454.x, x_454.y));
  let x_457 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_457.x, x_456.x, x_456.y, x_457.w);
  let x_459 : f32 = u_xlat24;
  let x_462 : f32 = x_33.x_Glossiness;
  u_xlat24 = (-(x_459) + x_462);
  let x_464 : f32 = u_xlat24;
  u_xlat24 = (x_464 + 1.0f);
  let x_466 : f32 = u_xlat24;
  u_xlat24 = clamp(x_466, 0.0f, 1.0f);
  let x_473 : vec4<f32> = u_xlat3;
  let x_475 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_473.y, x_473.w));
  u_xlat25 = x_475.x;
  let x_477 : f32 = u_xlat25;
  u_xlat25 = (x_477 * 16.0f);
  let x_480 : f32 = u_xlat25;
  let x_482 : vec3<f32> = u_xlat0;
  let x_484 : vec3<f32> = u_xlat1;
  u_xlat10 = ((vec3<f32>(x_480, x_480, x_480) * x_482) + x_484);
  let x_486 : vec3<f32> = u_xlat2;
  let x_488 : vec3<f32> = u_xlat5;
  let x_489 : vec3<f32> = (vec3<f32>(x_486.x, x_486.x, x_486.x) * x_488);
  let x_490 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_489.x, x_489.y, x_490.z, x_489.z);
  let x_492 : vec3<f32> = u_xlat0;
  let x_494 : f32 = u_xlat24;
  u_xlat5 = (-(x_492) + vec3<f32>(x_494, x_494, x_494));
  let x_497 : vec4<f32> = u_xlat3;
  let x_499 : vec3<f32> = u_xlat5;
  let x_501 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_497.z, x_497.z, x_497.z) * x_499) + x_501);
  let x_503 : vec3<f32> = u_xlat0;
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_503 * vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec3<f32> = u_xlat6;
  let x_508 : vec3<f32> = u_xlat1;
  let x_510 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_507 * x_508) + x_510);
  let x_514 : vec3<f32> = u_xlat10;
  let x_515 : vec4<f32> = u_xlat3;
  let x_518 : vec3<f32> = u_xlat0;
  let x_519 : vec3<f32> = ((x_514 * vec3<f32>(x_515.x, x_515.y, x_515.w)) + x_518);
  let x_520 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
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

