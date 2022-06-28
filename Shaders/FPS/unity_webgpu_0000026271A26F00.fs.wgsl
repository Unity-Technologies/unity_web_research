struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb23 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat23 : f32;

var<private> u_xlat24 : f32;

@group(0) @binding(2) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(3) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(4) var sampler_LightTexture0 : sampler;

var<private> u_xlat9 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_189 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD1;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD1;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat22;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_57 : vec3<f32> = vs_TEXCOORD0;
  let x_58 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_57, x_58);
  let x_60 : f32 = u_xlat22;
  u_xlat22 = log2(x_60);
  let x_62 : f32 = u_xlat22;
  u_xlat22 = (x_62 * 0.100000001f);
  let x_65 : f32 = u_xlat22;
  u_xlat22 = exp2(x_65);
  let x_67 : f32 = u_xlat22;
  u_xlat22 = (-(x_67) + 1.0f);
  let x_71 : f32 = u_xlat22;
  u_xlat22 = max(x_71, 0.0f);
  let x_75 : f32 = u_xlat22;
  let x_79 : vec4<f32> = x_18.x_Color;
  u_xlat3 = (vec3<f32>(x_75, x_75, x_75) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_87 : f32 = x_18.x_Time.x;
  u_xlat22 = (x_87 * 200.0f);
  let x_90 : f32 = u_xlat22;
  u_xlat22 = sin(x_90);
  let x_92 : f32 = u_xlat22;
  u_xlat22 = (x_92 + 1.0f);
  let x_94 : f32 = u_xlat22;
  u_xlat22 = (x_94 * 0.5f);
  let x_98 : f32 = u_xlat22;
  let x_100 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_98, x_98, x_98) * x_100);
  let x_103 : vec3<f32> = vs_TEXCOORD1;
  let x_107 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat5 = (vec3<f32>(x_103.y, x_103.y, x_103.y) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_111 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_113 : vec3<f32> = vs_TEXCOORD1;
  let x_116 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_111.x, x_111.y, x_111.z) * vec3<f32>(x_113.x, x_113.x, x_113.x)) + x_116);
  let x_119 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_121 : vec3<f32> = vs_TEXCOORD1;
  let x_124 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(x_121.z, x_121.z, x_121.z)) + x_124);
  let x_126 : vec3<f32> = u_xlat5;
  let x_129 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat5 = (x_126 + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_137 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_137 == 1.0f);
  let x_139 : bool = u_xlatb23;
  if (x_139) {
    let x_144 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_144 == 1.0f);
    let x_148 : vec3<f32> = vs_TEXCOORD1;
    let x_152 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_154 : vec3<f32> = (vec3<f32>(x_148.y, x_148.y, x_148.y) * vec3<f32>(x_152.x, x_152.y, x_152.z));
    let x_155 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
    let x_158 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_160 : vec3<f32> = vs_TEXCOORD1;
    let x_163 : vec4<f32> = u_xlat6;
    let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
    let x_166 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
    let x_169 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_171 : vec3<f32> = vs_TEXCOORD1;
    let x_174 : vec4<f32> = u_xlat6;
    let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.z, x_171.z, x_171.z)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
    let x_177 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
    let x_179 : vec4<f32> = u_xlat6;
    let x_182 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_184 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + vec3<f32>(x_182.x, x_182.y, x_182.z));
    let x_185 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : bool = u_xlatb23;
    if (x_187) {
      let x_192 : vec4<f32> = u_xlat6;
      x_189 = vec3<f32>(x_192.x, x_192.y, x_192.z);
    } else {
      let x_195 : vec3<f32> = vs_TEXCOORD1;
      x_189 = x_195;
    }
    let x_196 : vec3<f32> = x_189;
    let x_197 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat6;
    let x_203 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_205 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) + -(x_203));
    let x_206 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat6;
    let x_212 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_213 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) * x_212);
    let x_214 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_214.x, x_213.x, x_213.y, x_213.z);
    let x_218 : f32 = u_xlat6.y;
    u_xlat23 = ((x_218 * 0.25f) + 0.75f);
    let x_226 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_226 * 0.5f) + 0.75f);
    let x_229 : f32 = u_xlat23;
    let x_230 : f32 = u_xlat24;
    u_xlat6.x = max(x_229, x_230);
    let x_243 : vec4<f32> = u_xlat6;
    let x_245 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_243.x, x_243.z, x_243.w));
    u_xlat6 = x_245;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_252 : vec4<f32> = u_xlat6;
  let x_254 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_252, x_254);
  let x_256 : f32 = u_xlat23;
  u_xlat23 = clamp(x_256, 0.0f, 1.0f);
  let x_258 : vec3<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat5;
  u_xlat24 = dot(x_258, x_259);
  let x_269 : f32 = u_xlat24;
  let x_272 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_269, x_269));
  u_xlat24 = x_272.x;
  let x_274 : f32 = u_xlat23;
  let x_275 : f32 = u_xlat24;
  u_xlat23 = (x_274 * x_275);
  let x_277 : f32 = u_xlat23;
  let x_281 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_277, x_277, x_277) * vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec3<f32> = vs_TEXCOORD0;
  let x_285 : vec3<f32> = vs_TEXCOORD0;
  u_xlat23 = dot(x_284, x_285);
  let x_287 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_287);
  let x_289 : f32 = u_xlat23;
  let x_291 : vec3<f32> = vs_TEXCOORD0;
  let x_292 : vec3<f32> = (vec3<f32>(x_289, x_289, x_289) * x_291);
  let x_293 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec3<f32> = u_xlat3;
  let x_296 : f32 = u_xlat22;
  u_xlat3 = ((x_295 * vec3<f32>(x_296, x_296, x_296)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_304 : f32 = x_18.x_Metallic;
  let x_306 : f32 = x_18.x_Metallic;
  let x_308 : f32 = x_18.x_Metallic;
  let x_309 : vec3<f32> = vec3<f32>(x_304, x_306, x_308);
  let x_314 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * x_314) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_320 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_320) * 0.959999979f) + 0.959999979f);
  let x_325 : f32 = u_xlat22;
  let x_327 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_325, x_325, x_325) * x_327);
  let x_331 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_331) + 1.0f);
  let x_334 : vec3<f32> = u_xlat0;
  let x_335 : f32 = u_xlat21;
  let x_338 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_334 * vec3<f32>(x_335, x_335, x_335)) + x_338);
  let x_340 : vec3<f32> = u_xlat0;
  let x_341 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_340, x_341);
  let x_343 : f32 = u_xlat21;
  u_xlat21 = max(x_343, 0.001f);
  let x_346 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_346);
  let x_348 : f32 = u_xlat21;
  let x_350 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_348, x_348, x_348) * x_350);
  let x_352 : vec4<f32> = u_xlat6;
  let x_354 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_352.x, x_352.y, x_352.z), x_354);
  let x_356 : vec4<f32> = u_xlat6;
  let x_358 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_356.x, x_356.y, x_356.z), x_358);
  let x_362 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_362, 0.0f, 1.0f);
  let x_366 : vec4<f32> = u_xlat6;
  let x_368 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_366.x, x_366.y, x_366.z), x_368);
  let x_370 : f32 = u_xlat9;
  u_xlat9 = clamp(x_370, 0.0f, 1.0f);
  let x_372 : vec3<f32> = u_xlat1;
  let x_373 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_372, x_373);
  let x_377 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_377, 0.0f, 1.0f);
  let x_382 : f32 = u_xlat0.x;
  let x_384 : f32 = u_xlat0.x;
  u_xlat7.x = (x_382 * x_384);
  let x_387 : vec3<f32> = u_xlat7;
  let x_389 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_387.x, x_387.x), vec2<f32>(x_389, x_389));
  let x_394 : f32 = u_xlat7.x;
  u_xlat7.x = (x_394 + -0.5f);
  let x_400 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_400) + 1.0f);
  let x_403 : f32 = u_xlat14;
  let x_404 : f32 = u_xlat14;
  u_xlat1.x = (x_403 * x_404);
  let x_408 : f32 = u_xlat1.x;
  let x_410 : f32 = u_xlat1.x;
  u_xlat1.x = (x_408 * x_410);
  let x_413 : f32 = u_xlat14;
  let x_415 : f32 = u_xlat1.x;
  u_xlat14 = (x_413 * x_415);
  let x_418 : f32 = u_xlat7.x;
  let x_419 : f32 = u_xlat14;
  u_xlat14 = ((x_418 * x_419) + 1.0f);
  let x_422 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_422)) + 1.0f);
  let x_429 : f32 = u_xlat1.x;
  let x_431 : f32 = u_xlat1.x;
  u_xlat8 = (x_429 * x_431);
  let x_433 : f32 = u_xlat8;
  let x_434 : f32 = u_xlat8;
  u_xlat8 = (x_433 * x_434);
  let x_437 : f32 = u_xlat1.x;
  let x_438 : f32 = u_xlat8;
  u_xlat1.x = (x_437 * x_438);
  let x_442 : f32 = u_xlat7.x;
  let x_444 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_442 * x_444) + 1.0f);
  let x_449 : f32 = u_xlat7.x;
  let x_450 : f32 = u_xlat14;
  u_xlat7.x = (x_449 * x_450);
  let x_453 : f32 = u_xlat22;
  let x_454 : f32 = u_xlat22;
  u_xlat14 = (x_453 * x_454);
  let x_456 : f32 = u_xlat14;
  u_xlat14 = max(x_456, 0.002f);
  let x_459 : f32 = u_xlat14;
  u_xlat1.x = (-(x_459) + 1.0f);
  let x_463 : f32 = u_xlat21;
  let x_466 : f32 = u_xlat1.x;
  let x_468 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_463) * x_466) + x_468);
  let x_471 : f32 = u_xlat2.x;
  let x_473 : f32 = u_xlat1.x;
  let x_475 : f32 = u_xlat14;
  u_xlat1.x = ((x_471 * x_473) + x_475);
  let x_478 : f32 = u_xlat21;
  let x_481 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_478) * x_481);
  let x_484 : f32 = u_xlat2.x;
  let x_485 : f32 = u_xlat8;
  let x_487 : f32 = u_xlat21;
  u_xlat21 = ((x_484 * x_485) + x_487);
  let x_489 : f32 = u_xlat21;
  u_xlat21 = (x_489 + 0.00001f);
  let x_492 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_492);
  let x_494 : f32 = u_xlat14;
  let x_495 : f32 = u_xlat14;
  u_xlat14 = (x_494 * x_495);
  let x_497 : f32 = u_xlat9;
  let x_498 : f32 = u_xlat14;
  let x_500 : f32 = u_xlat9;
  u_xlat1.x = ((x_497 * x_498) + -(x_500));
  let x_505 : f32 = u_xlat1.x;
  let x_506 : f32 = u_xlat9;
  u_xlat1.x = ((x_505 * x_506) + 1.0f);
  let x_510 : f32 = u_xlat14;
  u_xlat14 = (x_510 * 0.318309873f);
  let x_514 : f32 = u_xlat1.x;
  let x_516 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_514 * x_516) + 0.0000001f);
  let x_521 : f32 = u_xlat14;
  let x_523 : f32 = u_xlat1.x;
  u_xlat14 = (x_521 / x_523);
  let x_525 : f32 = u_xlat14;
  let x_526 : f32 = u_xlat21;
  u_xlat7.y = (x_525 * x_526);
  let x_529 : vec3<f32> = u_xlat2;
  let x_531 : vec3<f32> = u_xlat7;
  let x_533 : vec2<f32> = (vec2<f32>(x_529.x, x_529.x) * vec2<f32>(x_531.x, x_531.y));
  let x_534 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_533.x, x_533.y, x_534.z);
  let x_537 : f32 = u_xlat7.y;
  u_xlat14 = (x_537 * 3.141592741f);
  let x_540 : f32 = u_xlat14;
  u_xlat14 = max(x_540, 0.0f);
  let x_542 : vec3<f32> = u_xlat3;
  let x_543 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_542, x_543);
  let x_546 : f32 = u_xlat21;
  u_xlatb21 = !((x_546 == 0.0f));
  let x_548 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_548);
  let x_550 : f32 = u_xlat21;
  let x_551 : f32 = u_xlat14;
  u_xlat14 = (x_550 * x_551);
  let x_553 : vec3<f32> = u_xlat7;
  let x_555 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_553.x, x_553.x, x_553.x) * x_555);
  let x_557 : vec3<f32> = u_xlat5;
  let x_558 : f32 = u_xlat14;
  u_xlat7 = (x_557 * vec3<f32>(x_558, x_558, x_558));
  let x_562 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_562) + 1.0f);
  let x_567 : f32 = u_xlat0.x;
  let x_569 : f32 = u_xlat0.x;
  u_xlat22 = (x_567 * x_569);
  let x_571 : f32 = u_xlat22;
  let x_572 : f32 = u_xlat22;
  u_xlat22 = (x_571 * x_572);
  let x_575 : f32 = u_xlat0.x;
  let x_576 : f32 = u_xlat22;
  u_xlat0.x = (x_575 * x_576);
  let x_579 : vec3<f32> = u_xlat3;
  u_xlat2 = (-(x_579) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_583 : vec3<f32> = u_xlat2;
  let x_584 : vec3<f32> = u_xlat0;
  let x_587 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_583 * vec3<f32>(x_584.x, x_584.x, x_584.x)) + x_587);
  let x_589 : vec3<f32> = u_xlat7;
  let x_590 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_589 * x_590);
  let x_594 : vec3<f32> = u_xlat4;
  let x_595 : vec3<f32> = u_xlat1;
  let x_597 : vec3<f32> = u_xlat0;
  let x_598 : vec3<f32> = ((x_594 * x_595) + x_597);
  let x_599 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

