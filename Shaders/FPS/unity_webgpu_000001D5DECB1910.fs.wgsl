struct PGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding : u32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_EdgeColor2 : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(6) var sampler_Noise : sampler;

var<private> u_xlat5 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlatb15 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat6 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target1 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(7) var sampler_Normal : sampler;

var<private> SV_Target2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : f32 = x_13.x_Cutoff;
  let x_20 : f32 = x_13.x_Cutoff;
  u_xlat0.x = (x_18 + x_20);
  let x_32 : f32 = vs_TEXCOORD1.w;
  u_xlat1.z = x_32;
  let x_37 : vec4<f32> = vs_TEXCOORD2;
  let x_38 : vec2<f32> = vec2<f32>(x_37.w, x_37.w);
  let x_39 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_39.x, x_38.x, x_39.z, x_38.y);
  let x_43 : f32 = vs_TEXCOORD3.w;
  u_xlat1.x = x_43;
  let x_45 : vec4<f32> = u_xlat1;
  let x_49 : vec4<f32> = x_13.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + -(vec4<f32>(x_49.z, x_49.y, x_49.x, x_49.y)));
  let x_54 : f32 = u_xlat1.w;
  let x_58 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_54 * 2.0f) + x_58);
  let x_63 : vec4<f32> = u_xlat1;
  let x_68 : vec3<f32> = (vec3<f32>(x_63.w, x_63.x, x_63.z) * vec3<f32>(6.0f, 0.200000003f, 0.200000003f));
  let x_69 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_68.x, x_68.y, x_69.z, x_68.z);
  let x_71 : vec4<f32> = u_xlat2;
  let x_72 : vec2<f32> = vec2<f32>(x_71.y, x_71.w);
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_73.x, x_72.x, x_73.z, x_72.y);
  let x_85 : vec4<f32> = u_xlat0;
  let x_87 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_85.x, x_85.y));
  u_xlat0.x = x_87.x;
  let x_92 : f32 = u_xlat1.y;
  let x_96 : f32 = x_13.x_Cutoff;
  u_xlat0.z = ((x_92 * 4.0f) + x_96);
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_103.z, x_103.w));
  u_xlat5 = x_105.x;
  let x_107 : vec4<f32> = u_xlat0;
  let x_109 : f32 = u_xlat5;
  u_xlat0.x = dot(vec2<f32>(x_107.x, x_107.x), vec2<f32>(x_109, x_109));
  let x_115 : f32 = x_13.x_bounds.y;
  u_xlat5 = (x_115 + 0.200000003f);
  let x_118 : f32 = u_xlat5;
  u_xlat10 = (x_118 * 0.5f);
  let x_122 : f32 = x_13.x_Cutoff;
  let x_123 : f32 = u_xlat5;
  let x_125 : f32 = u_xlat10;
  u_xlat5 = ((x_122 * x_123) + -(x_125));
  let x_128 : f32 = u_xlat5;
  let x_131 : f32 = x_13.x_EdgeSizeTop;
  u_xlat10 = (x_128 + x_131);
  let x_134 : f32 = u_xlat10;
  let x_137 : f32 = u_xlat1.w;
  u_xlat15 = (-(x_134) + x_137);
  let x_139 : f32 = u_xlat10;
  let x_141 : f32 = u_xlat5;
  u_xlat10 = (-(x_139) + x_141);
  let x_144 : f32 = u_xlat10;
  u_xlat10 = (1.0f / x_144);
  let x_146 : f32 = u_xlat10;
  let x_147 : f32 = u_xlat15;
  u_xlat10 = (x_146 * x_147);
  let x_149 : f32 = u_xlat10;
  u_xlat10 = clamp(x_149, 0.0f, 1.0f);
  let x_152 : f32 = u_xlat10;
  u_xlat15 = ((x_152 * -2.0f) + 3.0f);
  let x_157 : f32 = u_xlat10;
  let x_158 : f32 = u_xlat10;
  u_xlat10 = (x_157 * x_158);
  let x_160 : f32 = u_xlat10;
  let x_161 : f32 = u_xlat15;
  u_xlat10 = (x_160 * x_161);
  let x_167 : f32 = u_xlat1.w;
  let x_168 : f32 = u_xlat5;
  u_xlatb15 = (x_167 >= x_168);
  let x_170 : bool = u_xlatb15;
  u_xlat1.x = select(1.0f, 0.0f, x_170);
  let x_173 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_173);
  let x_176 : f32 = u_xlat0.x;
  let x_177 : f32 = u_xlat10;
  let x_180 : f32 = u_xlat1.x;
  u_xlat0.x = ((x_176 * x_177) + x_180);
  let x_184 : f32 = u_xlat0.x;
  let x_186 : f32 = x_13.x_Cutoff;
  u_xlat0.x = (x_184 + -(x_186));
  let x_191 : f32 = u_xlat0.x;
  let x_194 : f32 = x_13.x_Cutoff2;
  u_xlat0.x = (x_191 + -(x_194));
  let x_200 : f32 = u_xlat0.x;
  u_xlatb0 = (x_200 < 0.0f);
  let x_202 : bool = u_xlatb0;
  if (((select(0i, 1i, x_202) * -1i) != 0i)) {
    discard;
  }
  let x_211 : f32 = u_xlat5;
  let x_214 : f32 = x_13.x_EdgeSizeBot;
  u_xlat0.x = (x_211 + -(x_214));
  let x_219 : f32 = u_xlat0.x;
  let x_221 : f32 = u_xlat5;
  u_xlat5 = (-(x_219) + x_221);
  let x_224 : f32 = u_xlat0.x;
  let x_227 : f32 = u_xlat1.w;
  u_xlat0.x = (-(x_224) + x_227);
  let x_230 : f32 = u_xlat5;
  u_xlat5 = (1.0f / x_230);
  let x_232 : f32 = u_xlat5;
  let x_234 : f32 = u_xlat0.x;
  u_xlat0.x = (x_232 * x_234);
  let x_238 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_238, 0.0f, 1.0f);
  let x_242 : f32 = u_xlat0.x;
  u_xlat5 = ((x_242 * -2.0f) + 3.0f);
  let x_246 : f32 = u_xlat0.x;
  let x_248 : f32 = u_xlat0.x;
  u_xlat0.x = (x_246 * x_248);
  let x_252 : f32 = u_xlat5;
  let x_255 : f32 = u_xlat0.x;
  u_xlat6 = ((-(x_252) * x_255) + 1.0f);
  let x_259 : f32 = u_xlat0.x;
  let x_260 : f32 = u_xlat5;
  u_xlat0.x = (x_259 * x_260);
  let x_265 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = x_13.x_EdgeColor1;
  u_xlat3 = (vec3<f32>(x_265.x, x_265.x, x_265.x) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat1;
  let x_274 : vec3<f32> = u_xlat3;
  let x_275 : vec3<f32> = (vec3<f32>(x_272.x, x_272.x, x_272.x) * x_274);
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_275.x, x_276.y, x_275.y, x_275.z);
  let x_285 : vec2<f32> = vs_TEXCOORD0;
  let x_286 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_285);
  let x_287 : vec2<f32> = vec2<f32>(x_286.x, x_286.w);
  let x_288 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_288.w);
  let x_290 : vec4<f32> = u_xlat0;
  let x_294 : f32 = x_13.x_Metallic;
  let x_296 : f32 = x_13.x_Glossiness;
  let x_298 : vec2<f32> = (vec2<f32>(x_290.x, x_290.y) * vec2<f32>(x_294, x_296));
  let x_299 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_298.x, x_298.y, x_299.z, x_299.w);
  let x_301 : f32 = u_xlat6;
  let x_303 : f32 = u_xlat0.x;
  u_xlat0.x = (x_301 * x_303);
  let x_308 : f32 = u_xlat6;
  let x_310 : f32 = u_xlat0.y;
  SV_Target1.w = (x_308 * x_310);
  let x_315 : f32 = u_xlat0.x;
  u_xlat5 = ((-(x_315) * 0.959999979f) + 0.959999979f);
  let x_325 : vec2<f32> = vs_TEXCOORD0;
  let x_326 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_325);
  u_xlat3 = vec3<f32>(x_326.x, x_326.y, x_326.z);
  let x_329 : vec3<f32> = u_xlat3;
  let x_332 : vec4<f32> = x_13.x_Color;
  u_xlat4 = (x_329 * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec3<f32> = u_xlat3;
  let x_337 : vec4<f32> = x_13.x_Color;
  u_xlat3 = ((x_335 * vec3<f32>(x_337.x, x_337.y, x_337.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_343 : vec4<f32> = u_xlat0;
  let x_345 : vec3<f32> = u_xlat3;
  let x_349 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.x, x_343.x) * x_345) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_350 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : f32 = u_xlat5;
  let x_355 : vec3<f32> = u_xlat4;
  let x_356 : vec3<f32> = (vec3<f32>(x_353, x_353, x_353) * x_355);
  let x_357 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  SV_Target0.w = 1.0f;
  let x_365 : vec2<f32> = vs_TEXCOORD0;
  let x_366 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_365);
  u_xlat3 = vec3<f32>(x_366.x, x_366.y, x_366.w);
  let x_369 : f32 = u_xlat3.z;
  let x_371 : f32 = u_xlat3.x;
  u_xlat3.x = (x_369 * x_371);
  let x_374 : vec3<f32> = u_xlat3;
  let x_380 : vec2<f32> = ((vec2<f32>(x_374.x, x_374.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_381 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_380.x, x_380.y, x_381.z);
  let x_383 : vec3<f32> = u_xlat3;
  let x_385 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(vec2<f32>(x_383.x, x_383.y), vec2<f32>(x_385.x, x_385.y));
  let x_390 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_390, 1.0f);
  let x_394 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_394) + 1.0f);
  let x_399 : f32 = u_xlat0.x;
  u_xlat3.z = sqrt(x_399);
  let x_402 : vec4<f32> = vs_TEXCOORD1;
  let x_404 : vec3<f32> = u_xlat3;
  u_xlat4.x = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), x_404);
  let x_407 : vec4<f32> = vs_TEXCOORD2;
  let x_409 : vec3<f32> = u_xlat3;
  u_xlat4.y = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), x_409);
  let x_412 : vec4<f32> = vs_TEXCOORD3;
  let x_414 : vec3<f32> = u_xlat3;
  u_xlat4.z = dot(vec3<f32>(x_412.x, x_412.y, x_412.z), x_414);
  let x_417 : vec3<f32> = u_xlat4;
  let x_418 : vec3<f32> = u_xlat4;
  u_xlat0.x = dot(x_417, x_418);
  let x_422 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_422);
  let x_425 : vec4<f32> = u_xlat0;
  let x_427 : vec3<f32> = u_xlat4;
  u_xlat3 = (vec3<f32>(x_425.x, x_425.x, x_425.x) * x_427);
  let x_430 : vec3<f32> = u_xlat3;
  let x_433 : vec3<f32> = ((x_430 * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_434 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  SV_Target2.w = 1.0f;
  u_xlat2.y = 0.0f;
  let x_441 : vec4<f32> = u_xlat2;
  let x_443 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_441.x, x_441.y));
  u_xlat0.x = x_443.x;
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec3<f32> = (vec3<f32>(x_446.x, x_446.z, x_446.w) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449.w);
  let x_451 : vec4<f32> = u_xlat1;
  let x_453 : vec4<f32> = u_xlat0;
  let x_456 : vec4<f32> = u_xlat2;
  let x_458 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.z, x_451.w) * vec3<f32>(x_453.x, x_453.x, x_453.x)) + vec3<f32>(x_456.x, x_456.y, x_456.z));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_462 : vec4<f32> = x_13.x_EdgeColor1;
  let x_466 : vec4<f32> = x_13.x_EdgeColor2;
  let x_469 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + -(vec3<f32>(x_466.x, x_466.y, x_466.z)));
  let x_470 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_472 : f32 = u_xlat10;
  let x_474 : vec4<f32> = u_xlat2;
  let x_478 : vec4<f32> = x_13.x_EdgeColor2;
  let x_480 : vec3<f32> = ((vec3<f32>(x_472, x_472, x_472) * vec3<f32>(x_474.x, x_474.y, x_474.z)) + vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_481 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_483 : vec4<f32> = u_xlat0;
  let x_485 : f32 = u_xlat15;
  let x_488 : vec4<f32> = u_xlat1;
  let x_490 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_485, x_485, x_485)) + vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_494 : vec4<f32> = u_xlat0;
  let x_497 : vec3<f32> = exp2(-(vec3<f32>(x_494.x, x_494.y, x_494.z)));
  let x_498 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target1, SV_Target0, SV_Target2, SV_Target3);
}

