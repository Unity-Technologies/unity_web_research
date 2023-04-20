diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_SourceSize : vec4<f32>,
  /* @offset(32) */
  x_Grain_Params : vec2<f32>,
  /* @offset(48) */
  x_Grain_TilingParams : vec4<f32>,
  /* @offset(64) */
  x_FsrRcasConstants : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> u_xlatu0 : vec4<u32>;

var<private> u_xlatu1 : vec4<u32>;

var<private> u_xlatu2 : vec4<u32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatu4 : vec4<u32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat20 : vec2<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb20 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlati27 : i32;

var<private> u_xlati21 : vec2<i32>;

var<private> u_xlati13 : vec3<i32>;

var<private> u_xlati11 : i32;

var<private> u_xlati5 : vec2<i32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlati2 : vec2<i32>;

var<private> u_xlatb2 : vec2<bool>;

var<private> u_xlatb29 : bool;

var<private> u_xlatb19 : bool;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_626 : vec2<f32>;
  var x_639 : f32;
  var x_688 : f32;
  var x_707 : f32;
  var x_716 : f32;
  var x_732 : f32;
  var x_744 : f32;
  var x_794 : f32;
  var x_869 : f32;
  var x_890 : f32;
  var x_926 : f32;
  var x_946 : f32;
  var x_1001 : f32;
  var x_1022 : f32;
  var x_1054 : f32;
  var x_1075 : f32;
  var x_1106 : f32;
  var x_1126 : f32;
  var x_1181 : f32;
  var x_1202 : f32;
  var x_1234 : f32;
  var x_1255 : f32;
  var x_1285 : f32;
  var x_1305 : f32;
  var x_1360 : f32;
  var x_1381 : f32;
  var x_1414 : f32;
  var x_1434 : f32;
  var x_1453 : f32;
  var x_1472 : f32;
  var x_1503 : f32;
  var x_1521 : f32;
  var x_1567 : bool;
  var x_1606 : f32;
  var x_1617 : f32;
  var x_1743 : f32;
  var x_1756 : f32;
  var x_1768 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_SourceSize;
  let x_24 : vec2<f32> = (x_13 * vec2<f32>(x_22.x, x_22.y));
  let x_25 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_24.x, x_24.y, x_25.z);
  let x_31 : vec3<f32> = u_xlat0;
  let x_36 : vec2<u32> = bitcast<vec2<u32>>(vec2<i32>(vec2<f32>(x_31.x, x_31.y)));
  let x_37 : vec4<u32> = u_xlatu0;
  u_xlatu0 = vec4<u32>(x_36.x, x_36.y, x_37.z, x_37.w);
  let x_40 : vec4<u32> = u_xlatu0;
  u_xlatu1 = (vec4<u32>(x_40.x, x_40.y, x_40.x, x_40.y) + vec4<u32>(4294967295u, 0u, 0u, 4294967295u));
  let x_47 : vec4<u32> = u_xlatu1;
  let x_48 : vec2<u32> = vec2<u32>(x_47.z, x_47.w);
  let x_49 : vec4<u32> = u_xlatu2;
  u_xlatu2 = vec4<u32>(x_48.x, x_48.y, x_49.z, x_49.w);
  u_xlatu2.z = 0u;
  u_xlatu2.w = 0u;
  let x_62 : vec4<u32> = u_xlatu2;
  let x_66 : u32 = u_xlatu2.w;
  let x_68 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_62.x, x_62.y)), bitcast<i32>(x_66));
  let x_69 : vec3<f32> = vec3<f32>(x_68.x, x_68.y, x_68.z);
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  u_xlatu1.z = 0u;
  u_xlatu1.w = 0u;
  let x_76 : vec4<u32> = u_xlatu1;
  let x_80 : u32 = u_xlatu1.w;
  let x_82 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_76.x, x_76.y)), bitcast<i32>(x_80));
  let x_83 : vec3<f32> = vec3<f32>(x_82.x, x_82.y, x_82.z);
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_90 : vec4<u32> = u_xlatu0;
  let x_94 : u32 = u_xlatu0.w;
  let x_96 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_90.x, x_90.y)), bitcast<i32>(x_94));
  let x_97 : vec3<f32> = vec3<f32>(x_96.x, x_96.y, x_96.z);
  let x_98 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_100 : vec4<u32> = u_xlatu0;
  u_xlatu0 = (vec4<u32>(x_100.x, x_100.y, x_100.x, x_100.y) + vec4<u32>(0u, 1u, 1u, 0u));
  let x_106 : vec4<u32> = u_xlatu0;
  let x_107 : vec2<u32> = vec2<u32>(x_106.z, x_106.w);
  let x_108 : vec4<u32> = u_xlatu4;
  u_xlatu4 = vec4<u32>(x_107.x, x_107.y, x_108.z, x_108.w);
  u_xlatu4.z = 0u;
  u_xlatu4.w = 0u;
  let x_114 : vec4<u32> = u_xlatu4;
  let x_118 : u32 = u_xlatu4.w;
  let x_120 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_114.x, x_114.y)), bitcast<i32>(x_118));
  u_xlat4 = vec3<f32>(x_120.x, x_120.y, x_120.z);
  u_xlatu0.z = 0u;
  u_xlatu0.w = 0u;
  let x_125 : vec4<u32> = u_xlatu0;
  let x_129 : u32 = u_xlatu0.w;
  let x_131 : vec4<f32> = textureLoad(x_BlitTexture, bitcast<vec2<i32>>(vec2<u32>(x_125.x, x_125.y)), bitcast<i32>(x_129));
  u_xlat0 = vec3<f32>(x_131.x, x_131.y, x_131.z);
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = u_xlat4;
  u_xlat5 = min(vec3<f32>(x_134.x, x_134.y, x_134.z), x_136);
  let x_138 : vec4<f32> = u_xlat2;
  let x_140 : vec3<f32> = u_xlat5;
  u_xlat5 = min(vec3<f32>(x_138.x, x_138.y, x_138.z), x_140);
  let x_142 : vec3<f32> = u_xlat0;
  let x_143 : vec3<f32> = u_xlat5;
  u_xlat5 = min(x_142, x_143);
  let x_146 : vec4<f32> = u_xlat1;
  let x_148 : vec3<f32> = u_xlat4;
  u_xlat6 = max(vec3<f32>(x_146.x, x_146.y, x_146.z), x_148);
  let x_150 : vec4<f32> = u_xlat2;
  let x_152 : vec3<f32> = u_xlat6;
  u_xlat6 = max(vec3<f32>(x_150.x, x_150.y, x_150.z), x_152);
  let x_154 : vec3<f32> = u_xlat0;
  let x_155 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_154, x_155);
  let x_158 : vec4<f32> = u_xlat3;
  let x_160 : vec3<f32> = u_xlat5;
  u_xlat7 = min(vec3<f32>(x_158.x, x_158.y, x_158.z), x_160);
  let x_163 : vec3<f32> = u_xlat6;
  u_xlat8 = (x_163 * vec3<f32>(4.0f, 4.0f, 4.0f));
  let x_169 : vec3<f32> = u_xlat8;
  u_xlat8 = (vec3<f32>(1.0f, 1.0f, 1.0f) / vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_175 : vec3<f32> = u_xlat7;
  let x_176 : vec3<f32> = u_xlat8;
  u_xlat7 = (x_175 * x_176);
  let x_178 : vec4<f32> = u_xlat3;
  let x_180 : vec3<f32> = u_xlat6;
  u_xlat6 = max(vec3<f32>(x_178.x, x_178.y, x_178.z), x_180);
  let x_182 : vec3<f32> = u_xlat6;
  u_xlat6 = (-(x_182) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_185 : vec3<f32> = u_xlat5;
  u_xlat5 = ((x_185 * vec3<f32>(4.0f, 4.0f, 4.0f)) + vec3<f32>(-4.0f, -4.0f, -4.0f));
  let x_190 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(1.0f, 1.0f, 1.0f) / vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_196 : vec3<f32> = u_xlat5;
  let x_197 : vec3<f32> = u_xlat6;
  u_xlat5 = (x_196 * x_197);
  let x_199 : vec3<f32> = u_xlat5;
  let x_200 : vec3<f32> = u_xlat7;
  u_xlat5 = max(x_199, -(x_200));
  let x_206 : f32 = u_xlat5.z;
  let x_208 : f32 = u_xlat5.y;
  u_xlat27 = max(x_206, x_208);
  let x_210 : f32 = u_xlat27;
  let x_212 : f32 = u_xlat5.x;
  u_xlat27 = max(x_210, x_212);
  let x_214 : f32 = u_xlat27;
  u_xlat27 = min(x_214, 0.0f);
  let x_217 : f32 = u_xlat27;
  u_xlat27 = max(x_217, -0.1875f);
  let x_220 : f32 = u_xlat27;
  let x_224 : f32 = x_17.x_FsrRcasConstants.x;
  u_xlat27 = (x_220 * x_224);
  let x_227 : f32 = u_xlat27;
  u_xlat28 = ((x_227 * 4.0f) + 1.0f);
  let x_231 : f32 = u_xlat28;
  u_xlat29 = bitcast<f32>((-(bitcast<i32>(x_231)) + 2129764351i));
  let x_237 : f32 = u_xlat29;
  let x_239 : f32 = u_xlat28;
  u_xlat28 = ((-(x_237) * x_239) + 2.0f);
  let x_243 : f32 = u_xlat28;
  let x_244 : f32 = u_xlat29;
  u_xlat28 = (x_243 * x_244);
  let x_246 : vec4<f32> = u_xlat1;
  let x_248 : f32 = u_xlat27;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) * vec3<f32>(x_248, x_248, x_248));
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : f32 = u_xlat27;
  let x_255 : vec4<f32> = u_xlat2;
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : vec3<f32> = ((vec3<f32>(x_253, x_253, x_253) * vec3<f32>(x_255.x, x_255.y, x_255.z)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : f32 = u_xlat27;
  let x_265 : vec3<f32> = u_xlat0;
  let x_267 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_263, x_263, x_263) * x_265) + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : f32 = u_xlat27;
  let x_272 : vec3<f32> = u_xlat4;
  let x_274 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_270, x_270, x_270) * x_272) + x_274);
  let x_276 : vec4<f32> = u_xlat3;
  let x_278 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_276.x, x_276.y, x_276.z) + x_278);
  let x_280 : f32 = u_xlat28;
  let x_282 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_280, x_280, x_280) * x_282);
  let x_284 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_284, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_291 : vec4<f32> = x_17.x_SourceSize;
  let x_295 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_291.z, x_291.w, x_291.z, x_291.w) * vec4<f32>(0.0f, 1.0f, 1.0f, 0.0f)) + vec4<f32>(x_295.x, x_295.y, x_295.x, x_295.y));
  let x_305 : vec4<f32> = u_xlat1;
  let x_307 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_305.x, x_305.y), 0.0f);
  let x_308 : vec3<f32> = vec3<f32>(x_307.x, x_307.y, x_307.z);
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_319 : vec4<f32> = u_xlat1;
  let x_321 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_319.z, x_319.w), 0.0f);
  u_xlat10 = vec3<f32>(x_321.x, x_321.y, x_321.z);
  let x_323 : vec3<f32> = u_xlat10;
  u_xlat1.y = dot(x_323, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_327 : vec4<f32> = x_17.x_SourceSize;
  let x_332 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_327.z, x_327.w, x_327.z, x_327.w) * vec4<f32>(0.0f, -1.0f, -1.0f, 0.0f)) + vec4<f32>(x_332.x, x_332.y, x_332.x, x_332.y));
  let x_338 : vec4<f32> = u_xlat2;
  let x_340 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_338.x, x_338.y), 0.0f);
  let x_341 : vec3<f32> = vec3<f32>(x_340.x, x_340.y, x_340.z);
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat1.z = dot(vec3<f32>(x_344.x, x_344.y, x_344.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_351 : vec4<f32> = u_xlat2;
  let x_353 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_351.z, x_351.w), 0.0f);
  let x_354 : vec3<f32> = vec3<f32>(x_353.x, x_353.y, x_353.z);
  let x_355 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat1.w = dot(vec3<f32>(x_357.x, x_357.y, x_357.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
  let x_361 : f32 = u_xlat27;
  let x_363 : f32 = u_xlat1.x;
  u_xlat2.x = max(x_361, x_363);
  let x_367 : f32 = u_xlat27;
  let x_369 : f32 = u_xlat1.x;
  u_xlat11.x = min(x_367, x_369);
  let x_373 : f32 = u_xlat1.y;
  let x_375 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_373, x_375);
  let x_379 : f32 = u_xlat1.y;
  let x_381 : f32 = u_xlat11.x;
  u_xlat11.x = min(x_379, x_381);
  let x_387 : f32 = u_xlat1.w;
  let x_389 : f32 = u_xlat1.z;
  u_xlat20.x = max(x_387, x_389);
  let x_393 : f32 = u_xlat1.w;
  let x_395 : f32 = u_xlat1.z;
  u_xlat29 = min(x_393, x_395);
  let x_398 : f32 = u_xlat2.x;
  let x_400 : f32 = u_xlat20.x;
  u_xlat2.x = max(x_398, x_400);
  let x_404 : f32 = u_xlat11.x;
  let x_405 : f32 = u_xlat29;
  u_xlat11.x = min(x_404, x_405);
  let x_409 : f32 = u_xlat2.x;
  u_xlat20.x = (x_409 * 0.15000000596046447754f);
  let x_414 : f32 = u_xlat11.x;
  let x_417 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_414) + x_417);
  let x_421 : f32 = u_xlat20.x;
  u_xlat11.x = max(x_421, 0.02999999932944774628f);
  let x_429 : f32 = u_xlat2.x;
  let x_431 : f32 = u_xlat11.x;
  u_xlatb11 = (x_429 >= x_431);
  let x_433 : bool = u_xlatb11;
  if (x_433) {
    let x_436 : vec2<f32> = vs_TEXCOORD0;
    let x_438 : vec4<f32> = x_17.x_SourceSize;
    let x_441 : vec2<f32> = (x_436 + -(vec2<f32>(x_438.z, x_438.w)));
    let x_442 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_441.x, x_441.y, x_442.z);
    let x_447 : vec3<f32> = u_xlat11;
    let x_449 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_447.x, x_447.y), 0.0f);
    u_xlat11 = vec3<f32>(x_449.x, x_449.y, x_449.z);
    let x_451 : vec3<f32> = u_xlat11;
    u_xlat11.x = dot(x_451, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_454 : vec2<f32> = vs_TEXCOORD0;
    let x_456 : vec4<f32> = x_17.x_SourceSize;
    u_xlat20 = (x_454 + vec2<f32>(x_456.z, x_456.w));
    let x_462 : vec2<f32> = u_xlat20;
    let x_463 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, x_462, 0.0f);
    let x_464 : vec3<f32> = vec3<f32>(x_463.x, x_463.y, x_463.z);
    let x_465 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
    let x_467 : vec4<f32> = u_xlat3;
    u_xlat20.x = dot(vec3<f32>(x_467.x, x_467.y, x_467.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_472 : vec4<f32> = x_17.x_SourceSize;
    let x_476 : vec2<f32> = vs_TEXCOORD0;
    u_xlat3 = ((vec4<f32>(x_472.z, x_472.w, x_472.z, x_472.w) * vec4<f32>(1.0f, -1.0f, -1.0f, 1.0f)) + vec4<f32>(x_476.x, x_476.y, x_476.x, x_476.y));
    let x_482 : vec4<f32> = u_xlat3;
    let x_484 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_482.x, x_482.y), 0.0f);
    u_xlat4 = vec3<f32>(x_484.x, x_484.y, x_484.z);
    let x_486 : vec3<f32> = u_xlat4;
    u_xlat29 = dot(x_486, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_491 : vec4<f32> = u_xlat3;
    let x_493 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_491.z, x_491.w), 0.0f);
    let x_494 : vec3<f32> = vec3<f32>(x_493.x, x_493.y, x_493.z);
    let x_495 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
    let x_497 : vec4<f32> = u_xlat3;
    u_xlat3.x = dot(vec3<f32>(x_497.x, x_497.y, x_497.z), vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_502 : vec4<f32> = u_xlat1;
    let x_504 : vec4<f32> = u_xlat1;
    u_xlat12 = (vec2<f32>(x_502.x, x_502.y) + vec2<f32>(x_504.z, x_504.w));
    let x_508 : f32 = u_xlat2.x;
    u_xlat2.x = (1.0f / x_508);
    let x_513 : f32 = u_xlat12.y;
    let x_515 : f32 = u_xlat12.x;
    u_xlat30 = (x_513 + x_515);
    let x_517 : f32 = u_xlat27;
    let x_521 : f32 = u_xlat12.x;
    u_xlat12.x = ((x_517 * -2.0f) + x_521);
    let x_525 : f32 = u_xlat27;
    let x_528 : f32 = u_xlat12.y;
    u_xlat21 = ((x_525 * -2.0f) + x_528);
    let x_531 : f32 = u_xlat20.x;
    let x_532 : f32 = u_xlat29;
    u_xlat4.x = (x_531 + x_532);
    let x_535 : f32 = u_xlat29;
    let x_537 : f32 = u_xlat11.x;
    u_xlat29 = (x_535 + x_537);
    let x_541 : f32 = u_xlat1.y;
    let x_544 : f32 = u_xlat4.x;
    u_xlat13.x = ((x_541 * -2.0f) + x_544);
    let x_548 : f32 = u_xlat1.z;
    let x_550 : f32 = u_xlat29;
    u_xlat29 = ((x_548 * -2.0f) + x_550);
    let x_553 : f32 = u_xlat11.x;
    let x_555 : f32 = u_xlat3.x;
    u_xlat11.x = (x_553 + x_555);
    let x_559 : f32 = u_xlat20.x;
    let x_561 : f32 = u_xlat3.x;
    u_xlat20.x = (x_559 + x_561);
    let x_565 : f32 = u_xlat12.x;
    let x_569 : f32 = u_xlat13.x;
    u_xlat3.x = ((abs(x_565) * 2.0f) + abs(x_569));
    let x_573 : f32 = u_xlat21;
    let x_576 : f32 = u_xlat29;
    u_xlat29 = ((abs(x_573) * 2.0f) + abs(x_576));
    let x_580 : f32 = u_xlat1.w;
    let x_583 : f32 = u_xlat11.x;
    u_xlat12.x = ((x_580 * -2.0f) + x_583);
    let x_587 : f32 = u_xlat1.x;
    let x_590 : f32 = u_xlat20.x;
    u_xlat20.x = ((x_587 * -2.0f) + x_590);
    let x_594 : f32 = u_xlat3.x;
    let x_596 : f32 = u_xlat12.x;
    u_xlat3.x = (x_594 + abs(x_596));
    let x_600 : f32 = u_xlat29;
    let x_602 : f32 = u_xlat20.x;
    u_xlat20.x = (x_600 + abs(x_602));
    let x_607 : f32 = u_xlat4.x;
    let x_609 : f32 = u_xlat11.x;
    u_xlat11.x = (x_607 + x_609);
    let x_614 : f32 = u_xlat3.x;
    let x_616 : f32 = u_xlat20.x;
    u_xlatb20 = (x_614 >= x_616);
    let x_618 : f32 = u_xlat30;
    let x_621 : f32 = u_xlat11.x;
    u_xlat11.x = ((x_618 * 2.0f) + x_621);
    let x_624 : bool = u_xlatb20;
    if (x_624) {
      let x_629 : vec4<f32> = u_xlat1;
      x_626 = vec2<f32>(x_629.x, x_629.z);
    } else {
      let x_632 : vec4<f32> = u_xlat1;
      x_626 = vec2<f32>(x_632.y, x_632.w);
    }
    let x_634 : vec2<f32> = x_626;
    let x_635 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_634.x, x_635.y, x_634.y, x_635.w);
    let x_637 : bool = u_xlatb20;
    if (x_637) {
      let x_643 : f32 = x_17.x_SourceSize.w;
      x_639 = x_643;
    } else {
      let x_646 : f32 = x_17.x_SourceSize.z;
      x_639 = x_646;
    }
    let x_647 : f32 = x_639;
    u_xlat10.x = x_647;
    let x_650 : f32 = u_xlat11.x;
    let x_653 : f32 = u_xlat27;
    u_xlat28 = ((x_650 * 0.08333333581686019897f) + -(x_653));
    let x_656 : f32 = u_xlat27;
    let x_659 : vec4<f32> = u_xlat1;
    let x_661 : vec2<f32> = (-(vec2<f32>(x_656, x_656)) + vec2<f32>(x_659.z, x_659.x));
    let x_662 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_661.x, x_662.y, x_661.y);
    let x_664 : f32 = u_xlat27;
    let x_666 : vec4<f32> = u_xlat1;
    let x_668 : vec2<f32> = (vec2<f32>(x_664, x_664) + vec2<f32>(x_666.x, x_666.z));
    let x_669 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_668.x, x_669.y, x_668.y, x_669.w);
    let x_673 : f32 = u_xlat11.x;
    let x_676 : f32 = u_xlat11.z;
    u_xlatb3 = (abs(x_673) >= abs(x_676));
    let x_680 : f32 = u_xlat11.z;
    let x_683 : f32 = u_xlat11.x;
    u_xlat11.x = max(abs(x_680), abs(x_683));
    let x_687 : bool = u_xlatb3;
    if (x_687) {
      let x_692 : f32 = u_xlat10.x;
      x_688 = -(x_692);
    } else {
      let x_696 : f32 = u_xlat10.x;
      x_688 = x_696;
    }
    let x_697 : f32 = x_688;
    u_xlat10.x = x_697;
    let x_700 : f32 = u_xlat2.x;
    let x_701 : f32 = u_xlat28;
    u_xlat28 = (x_700 * abs(x_701));
    let x_704 : f32 = u_xlat28;
    u_xlat28 = clamp(x_704, 0.0f, 1.0f);
    let x_706 : bool = u_xlatb20;
    if (x_706) {
      let x_711 : f32 = x_17.x_SourceSize.z;
      x_707 = x_711;
    } else {
      x_707 = 0.0f;
    }
    let x_713 : f32 = x_707;
    u_xlat2.x = x_713;
    let x_715 : bool = u_xlatb20;
    if (x_715) {
      x_716 = 0.0f;
    } else {
      let x_721 : f32 = x_17.x_SourceSize.w;
      x_716 = x_721;
    }
    let x_722 : f32 = x_716;
    u_xlat2.w = x_722;
    let x_724 : vec3<f32> = u_xlat10;
    let x_729 : vec2<f32> = vs_TEXCOORD0;
    u_xlat12 = ((vec2<f32>(x_724.x, x_724.x) * vec2<f32>(0.5f, 0.5f)) + x_729);
    let x_731 : bool = u_xlatb20;
    if (x_731) {
      let x_737 : f32 = vs_TEXCOORD0.x;
      x_732 = x_737;
    } else {
      let x_740 : f32 = u_xlat12.x;
      x_732 = x_740;
    }
    let x_741 : f32 = x_732;
    u_xlat12.x = x_741;
    let x_743 : bool = u_xlatb20;
    if (x_743) {
      let x_748 : f32 = u_xlat12.y;
      x_744 = x_748;
    } else {
      let x_751 : f32 = vs_TEXCOORD0.y;
      x_744 = x_751;
    }
    let x_752 : f32 = x_744;
    u_xlat12.y = x_752;
    let x_754 : vec4<f32> = u_xlat2;
    let x_757 : vec2<f32> = u_xlat12;
    let x_758 : vec2<f32> = (-(vec2<f32>(x_754.x, x_754.w)) + x_757);
    let x_759 : vec3<f32> = u_xlat4;
    u_xlat4 = vec3<f32>(x_758.x, x_758.y, x_759.z);
    let x_761 : vec4<f32> = u_xlat2;
    let x_763 : vec2<f32> = u_xlat12;
    let x_764 : vec2<f32> = (vec2<f32>(x_761.x, x_761.w) + x_763);
    let x_765 : vec3<f32> = u_xlat5;
    u_xlat5 = vec3<f32>(x_764.x, x_764.y, x_765.z);
    let x_767 : f32 = u_xlat28;
    u_xlat12.x = ((x_767 * -2.0f) + 3.0f);
    let x_775 : vec3<f32> = u_xlat4;
    let x_777 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_775.x, x_775.y), 0.0f);
    u_xlat6 = vec3<f32>(x_777.x, x_777.y, x_777.z);
    let x_779 : vec3<f32> = u_xlat6;
    u_xlat21 = dot(x_779, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_781 : f32 = u_xlat28;
    let x_782 : f32 = u_xlat28;
    u_xlat28 = (x_781 * x_782);
    let x_787 : vec3<f32> = u_xlat5;
    let x_789 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_787.x, x_787.y), 0.0f);
    u_xlat6 = vec3<f32>(x_789.x, x_789.y, x_789.z);
    let x_791 : vec3<f32> = u_xlat6;
    u_xlat30 = dot(x_791, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
    let x_793 : bool = u_xlatb3;
    if (x_793) {
      let x_798 : f32 = u_xlat1.z;
      x_794 = x_798;
    } else {
      let x_801 : f32 = u_xlat1.x;
      x_794 = x_801;
    }
    let x_802 : f32 = x_794;
    u_xlat1.x = x_802;
    let x_806 : f32 = u_xlat11.x;
    u_xlat19 = (x_806 * 0.25f);
    let x_810 : f32 = u_xlat1.x;
    let x_813 : f32 = u_xlat27;
    u_xlat27 = ((-(x_810) * 0.5f) + x_813);
    let x_815 : f32 = u_xlat28;
    let x_817 : f32 = u_xlat12.x;
    u_xlat28 = (x_815 * x_817);
    let x_821 : f32 = u_xlat27;
    u_xlati27 = bitcast<i32>(select(0u, 4294967295u, (x_821 < 0.0f)));
    let x_826 : f32 = u_xlat1.x;
    let x_829 : f32 = u_xlat21;
    u_xlat3.x = ((-(x_826) * 0.5f) + x_829);
    let x_833 : f32 = u_xlat1.x;
    let x_836 : f32 = u_xlat30;
    u_xlat3.y = ((-(x_833) * 0.5f) + x_836);
    let x_841 : vec4<f32> = u_xlat3;
    let x_844 : f32 = u_xlat19;
    let x_847 : vec4<bool> = (abs(vec4<f32>(x_841.x, x_841.y, x_841.x, x_841.y)) >= vec4<f32>(x_844, x_844, x_844, x_844));
    u_xlati21 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_847.x, x_847.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_857 : f32 = u_xlat2.x;
    let x_862 : f32 = u_xlat4.x;
    u_xlat11.x = ((-(x_857) * 1.5f) + x_862);
    let x_866 : i32 = u_xlati21.x;
    if ((x_866 != 0i)) {
      let x_873 : f32 = u_xlat4.x;
      x_869 = x_873;
    } else {
      let x_876 : f32 = u_xlat11.x;
      x_869 = x_876;
    }
    let x_877 : f32 = x_869;
    u_xlat4.x = x_877;
    let x_880 : f32 = u_xlat2.w;
    let x_884 : f32 = u_xlat4.y;
    u_xlat11.x = ((-(x_880) * 1.5f) + x_884);
    let x_888 : i32 = u_xlati21.x;
    if ((x_888 != 0i)) {
      let x_894 : f32 = u_xlat4.y;
      x_890 = x_894;
    } else {
      let x_897 : f32 = u_xlat11.x;
      x_890 = x_897;
    }
    let x_898 : f32 = x_890;
    u_xlat4.z = x_898;
    let x_903 : vec2<i32> = u_xlati21;
    let x_904 : vec2<i32> = ~(x_903);
    let x_905 : vec3<i32> = u_xlati13;
    u_xlati13 = vec3<i32>(x_904.x, x_905.y, x_904.y);
    let x_909 : i32 = u_xlati13.z;
    let x_912 : i32 = u_xlati13.x;
    u_xlati11 = bitcast<i32>((bitcast<u32>(x_909) | bitcast<u32>(x_912)));
    let x_917 : f32 = u_xlat2.x;
    let x_920 : f32 = u_xlat5.x;
    u_xlat13.x = ((x_917 * 1.5f) + x_920);
    let x_924 : i32 = u_xlati21.y;
    if ((x_924 != 0i)) {
      let x_930 : f32 = u_xlat5.x;
      x_926 = x_930;
    } else {
      let x_933 : f32 = u_xlat13.x;
      x_926 = x_933;
    }
    let x_934 : f32 = x_926;
    u_xlat13.x = x_934;
    let x_937 : f32 = u_xlat2.w;
    let x_940 : f32 = u_xlat5.y;
    u_xlat5.x = ((x_937 * 1.5f) + x_940);
    let x_944 : i32 = u_xlati21.y;
    if ((x_944 != 0i)) {
      let x_950 : f32 = u_xlat5.y;
      x_946 = x_950;
    } else {
      let x_953 : f32 = u_xlat5.x;
      x_946 = x_953;
    }
    let x_954 : f32 = x_946;
    u_xlat13.z = x_954;
    let x_956 : i32 = u_xlati11;
    if ((x_956 != 0i)) {
      let x_961 : i32 = u_xlati21.x;
      if ((x_961 == 0i)) {
        let x_968 : vec3<f32> = u_xlat4;
        let x_970 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_968.x, x_968.z), 0.0f);
        u_xlat5 = vec3<f32>(x_970.x, x_970.y, x_970.z);
        let x_972 : vec3<f32> = u_xlat5;
        u_xlat3.x = dot(x_972, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
      }
      let x_976 : i32 = u_xlati21.y;
      if ((x_976 == 0i)) {
        let x_983 : vec3<f32> = u_xlat13;
        let x_985 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_983.x, x_983.z), 0.0f);
        u_xlat5 = vec3<f32>(x_985.x, x_985.y, x_985.z);
        let x_987 : vec3<f32> = u_xlat5;
        u_xlat3.y = dot(x_987, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
      }
      let x_991 : f32 = u_xlat1.x;
      let x_995 : f32 = u_xlat3.x;
      u_xlat11.x = ((-(x_991) * 0.5f) + x_995);
      let x_999 : i32 = u_xlati21.x;
      if ((x_999 != 0i)) {
        let x_1005 : f32 = u_xlat3.x;
        x_1001 = x_1005;
      } else {
        let x_1008 : f32 = u_xlat11.x;
        x_1001 = x_1008;
      }
      let x_1009 : f32 = x_1001;
      u_xlat3.x = x_1009;
      let x_1012 : f32 = u_xlat1.x;
      let x_1016 : f32 = u_xlat3.y;
      u_xlat11.x = ((-(x_1012) * 0.5f) + x_1016);
      let x_1020 : i32 = u_xlati21.y;
      if ((x_1020 != 0i)) {
        let x_1026 : f32 = u_xlat3.y;
        x_1022 = x_1026;
      } else {
        let x_1029 : f32 = u_xlat11.x;
        x_1022 = x_1029;
      }
      let x_1030 : f32 = x_1022;
      u_xlat3.y = x_1030;
      let x_1032 : vec4<f32> = u_xlat3;
      let x_1035 : f32 = u_xlat19;
      let x_1037 : vec4<bool> = (abs(vec4<f32>(x_1032.x, x_1032.y, x_1032.x, x_1032.y)) >= vec4<f32>(x_1035, x_1035, x_1035, x_1035));
      u_xlati21 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1037.x, x_1037.y)) * vec2<u32>(4294967295u, 4294967295u)));
      let x_1044 : f32 = u_xlat2.x;
      let x_1048 : f32 = u_xlat4.x;
      u_xlat11.x = ((-(x_1044) * 2.0f) + x_1048);
      let x_1052 : i32 = u_xlati21.x;
      if ((x_1052 != 0i)) {
        let x_1058 : f32 = u_xlat4.x;
        x_1054 = x_1058;
      } else {
        let x_1061 : f32 = u_xlat11.x;
        x_1054 = x_1061;
      }
      let x_1062 : f32 = x_1054;
      u_xlat4.x = x_1062;
      let x_1065 : f32 = u_xlat2.w;
      let x_1069 : f32 = u_xlat4.z;
      u_xlat11.x = ((-(x_1065) * 2.0f) + x_1069);
      let x_1073 : i32 = u_xlati21.x;
      if ((x_1073 != 0i)) {
        let x_1079 : f32 = u_xlat4.z;
        x_1075 = x_1079;
      } else {
        let x_1082 : f32 = u_xlat11.x;
        x_1075 = x_1082;
      }
      let x_1083 : f32 = x_1075;
      u_xlat4.z = x_1083;
      let x_1086 : vec2<i32> = u_xlati21;
      u_xlati5 = ~(x_1086);
      let x_1089 : i32 = u_xlati5.y;
      let x_1092 : i32 = u_xlati5.x;
      u_xlati11 = bitcast<i32>((bitcast<u32>(x_1089) | bitcast<u32>(x_1092)));
      let x_1097 : f32 = u_xlat2.x;
      let x_1100 : f32 = u_xlat13.x;
      u_xlat5.x = ((x_1097 * 2.0f) + x_1100);
      let x_1104 : i32 = u_xlati21.y;
      if ((x_1104 != 0i)) {
        let x_1110 : f32 = u_xlat13.x;
        x_1106 = x_1110;
      } else {
        let x_1113 : f32 = u_xlat5.x;
        x_1106 = x_1113;
      }
      let x_1114 : f32 = x_1106;
      u_xlat13.x = x_1114;
      let x_1117 : f32 = u_xlat2.w;
      let x_1120 : f32 = u_xlat13.z;
      u_xlat5.x = ((x_1117 * 2.0f) + x_1120);
      let x_1124 : i32 = u_xlati21.y;
      if ((x_1124 != 0i)) {
        let x_1130 : f32 = u_xlat13.z;
        x_1126 = x_1130;
      } else {
        let x_1133 : f32 = u_xlat5.x;
        x_1126 = x_1133;
      }
      let x_1134 : f32 = x_1126;
      u_xlat13.z = x_1134;
      let x_1136 : i32 = u_xlati11;
      if ((x_1136 != 0i)) {
        let x_1141 : i32 = u_xlati21.x;
        if ((x_1141 == 0i)) {
          let x_1148 : vec3<f32> = u_xlat4;
          let x_1150 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1148.x, x_1148.z), 0.0f);
          u_xlat5 = vec3<f32>(x_1150.x, x_1150.y, x_1150.z);
          let x_1152 : vec3<f32> = u_xlat5;
          u_xlat3.x = dot(x_1152, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
        }
        let x_1156 : i32 = u_xlati21.y;
        if ((x_1156 == 0i)) {
          let x_1163 : vec3<f32> = u_xlat13;
          let x_1165 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1163.x, x_1163.z), 0.0f);
          u_xlat5 = vec3<f32>(x_1165.x, x_1165.y, x_1165.z);
          let x_1167 : vec3<f32> = u_xlat5;
          u_xlat3.y = dot(x_1167, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
        }
        let x_1171 : f32 = u_xlat1.x;
        let x_1175 : f32 = u_xlat3.x;
        u_xlat11.x = ((-(x_1171) * 0.5f) + x_1175);
        let x_1179 : i32 = u_xlati21.x;
        if ((x_1179 != 0i)) {
          let x_1185 : f32 = u_xlat3.x;
          x_1181 = x_1185;
        } else {
          let x_1188 : f32 = u_xlat11.x;
          x_1181 = x_1188;
        }
        let x_1189 : f32 = x_1181;
        u_xlat3.x = x_1189;
        let x_1192 : f32 = u_xlat1.x;
        let x_1196 : f32 = u_xlat3.y;
        u_xlat11.x = ((-(x_1192) * 0.5f) + x_1196);
        let x_1200 : i32 = u_xlati21.y;
        if ((x_1200 != 0i)) {
          let x_1206 : f32 = u_xlat3.y;
          x_1202 = x_1206;
        } else {
          let x_1209 : f32 = u_xlat11.x;
          x_1202 = x_1209;
        }
        let x_1210 : f32 = x_1202;
        u_xlat3.y = x_1210;
        let x_1212 : vec4<f32> = u_xlat3;
        let x_1215 : f32 = u_xlat19;
        let x_1217 : vec4<bool> = (abs(vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y)) >= vec4<f32>(x_1215, x_1215, x_1215, x_1215));
        u_xlati21 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1217.x, x_1217.y)) * vec2<u32>(4294967295u, 4294967295u)));
        let x_1224 : f32 = u_xlat2.x;
        let x_1228 : f32 = u_xlat4.x;
        u_xlat11.x = ((-(x_1224) * 4.0f) + x_1228);
        let x_1232 : i32 = u_xlati21.x;
        if ((x_1232 != 0i)) {
          let x_1238 : f32 = u_xlat4.x;
          x_1234 = x_1238;
        } else {
          let x_1241 : f32 = u_xlat11.x;
          x_1234 = x_1241;
        }
        let x_1242 : f32 = x_1234;
        u_xlat4.x = x_1242;
        let x_1245 : f32 = u_xlat2.w;
        let x_1249 : f32 = u_xlat4.z;
        u_xlat11.x = ((-(x_1245) * 4.0f) + x_1249);
        let x_1253 : i32 = u_xlati21.x;
        if ((x_1253 != 0i)) {
          let x_1259 : f32 = u_xlat4.z;
          x_1255 = x_1259;
        } else {
          let x_1262 : f32 = u_xlat11.x;
          x_1255 = x_1262;
        }
        let x_1263 : f32 = x_1255;
        u_xlat4.z = x_1263;
        let x_1265 : vec2<i32> = u_xlati21;
        u_xlati5 = ~(x_1265);
        let x_1268 : i32 = u_xlati5.y;
        let x_1271 : i32 = u_xlati5.x;
        u_xlati11 = bitcast<i32>((bitcast<u32>(x_1268) | bitcast<u32>(x_1271)));
        let x_1276 : f32 = u_xlat2.x;
        let x_1279 : f32 = u_xlat13.x;
        u_xlat5.x = ((x_1276 * 4.0f) + x_1279);
        let x_1283 : i32 = u_xlati21.y;
        if ((x_1283 != 0i)) {
          let x_1289 : f32 = u_xlat13.x;
          x_1285 = x_1289;
        } else {
          let x_1292 : f32 = u_xlat5.x;
          x_1285 = x_1292;
        }
        let x_1293 : f32 = x_1285;
        u_xlat13.x = x_1293;
        let x_1296 : f32 = u_xlat2.w;
        let x_1299 : f32 = u_xlat13.z;
        u_xlat5.x = ((x_1296 * 4.0f) + x_1299);
        let x_1303 : i32 = u_xlati21.y;
        if ((x_1303 != 0i)) {
          let x_1309 : f32 = u_xlat13.z;
          x_1305 = x_1309;
        } else {
          let x_1312 : f32 = u_xlat5.x;
          x_1305 = x_1312;
        }
        let x_1313 : f32 = x_1305;
        u_xlat13.z = x_1313;
        let x_1315 : i32 = u_xlati11;
        if ((x_1315 != 0i)) {
          let x_1320 : i32 = u_xlati21.x;
          if ((x_1320 == 0i)) {
            let x_1327 : vec3<f32> = u_xlat4;
            let x_1329 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1327.x, x_1327.z), 0.0f);
            u_xlat5 = vec3<f32>(x_1329.x, x_1329.y, x_1329.z);
            let x_1331 : vec3<f32> = u_xlat5;
            u_xlat3.x = dot(x_1331, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
          }
          let x_1335 : i32 = u_xlati21.y;
          if ((x_1335 == 0i)) {
            let x_1342 : vec3<f32> = u_xlat13;
            let x_1344 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1342.x, x_1342.z), 0.0f);
            u_xlat5 = vec3<f32>(x_1344.x, x_1344.y, x_1344.z);
            let x_1346 : vec3<f32> = u_xlat5;
            u_xlat3.y = dot(x_1346, vec3<f32>(0.29899999499320983887f, 0.58700001239776611328f, 0.11400000005960464478f));
          }
          let x_1350 : f32 = u_xlat1.x;
          let x_1354 : f32 = u_xlat3.x;
          u_xlat11.x = ((-(x_1350) * 0.5f) + x_1354);
          let x_1358 : i32 = u_xlati21.x;
          if ((x_1358 != 0i)) {
            let x_1364 : f32 = u_xlat3.x;
            x_1360 = x_1364;
          } else {
            let x_1367 : f32 = u_xlat11.x;
            x_1360 = x_1367;
          }
          let x_1368 : f32 = x_1360;
          u_xlat3.x = x_1368;
          let x_1371 : f32 = u_xlat1.x;
          let x_1375 : f32 = u_xlat3.y;
          u_xlat1.x = ((-(x_1371) * 0.5f) + x_1375);
          let x_1379 : i32 = u_xlati21.y;
          if ((x_1379 != 0i)) {
            let x_1385 : f32 = u_xlat3.y;
            x_1381 = x_1385;
          } else {
            let x_1388 : f32 = u_xlat1.x;
            x_1381 = x_1388;
          }
          let x_1389 : f32 = x_1381;
          u_xlat3.y = x_1389;
          let x_1394 : vec4<f32> = u_xlat3;
          let x_1397 : f32 = u_xlat19;
          let x_1399 : vec4<bool> = (abs(vec4<f32>(x_1394.x, x_1394.x, x_1394.y, x_1394.x)) >= vec4<f32>(x_1397, x_1397, x_1397, x_1397));
          let x_1400 : vec2<bool> = vec2<bool>(x_1399.x, x_1399.z);
          let x_1401 : vec3<bool> = u_xlatb1;
          u_xlatb1 = vec3<bool>(x_1400.x, x_1401.y, x_1400.y);
          let x_1404 : f32 = u_xlat2.x;
          let x_1409 : f32 = u_xlat4.x;
          u_xlat11.x = ((-(x_1404) * 12.0f) + x_1409);
          let x_1413 : bool = u_xlatb1.x;
          if (x_1413) {
            let x_1418 : f32 = u_xlat4.x;
            x_1414 = x_1418;
          } else {
            let x_1421 : f32 = u_xlat11.x;
            x_1414 = x_1421;
          }
          let x_1422 : f32 = x_1414;
          u_xlat4.x = x_1422;
          let x_1425 : f32 = u_xlat2.w;
          let x_1429 : f32 = u_xlat4.z;
          u_xlat11.x = ((-(x_1425) * 12.0f) + x_1429);
          let x_1433 : bool = u_xlatb1.x;
          if (x_1433) {
            let x_1438 : f32 = u_xlat4.z;
            x_1434 = x_1438;
          } else {
            let x_1441 : f32 = u_xlat11.x;
            x_1434 = x_1441;
          }
          let x_1442 : f32 = x_1434;
          u_xlat4.z = x_1442;
          let x_1445 : f32 = u_xlat2.x;
          let x_1448 : f32 = u_xlat13.x;
          u_xlat1.x = ((x_1445 * 12.0f) + x_1448);
          let x_1452 : bool = u_xlatb1.z;
          if (x_1452) {
            let x_1457 : f32 = u_xlat13.x;
            x_1453 = x_1457;
          } else {
            let x_1460 : f32 = u_xlat1.x;
            x_1453 = x_1460;
          }
          let x_1461 : f32 = x_1453;
          u_xlat13.x = x_1461;
          let x_1464 : f32 = u_xlat2.w;
          let x_1467 : f32 = u_xlat13.z;
          u_xlat1.x = ((x_1464 * 12.0f) + x_1467);
          let x_1471 : bool = u_xlatb1.z;
          if (x_1471) {
            let x_1476 : f32 = u_xlat13.z;
            x_1472 = x_1476;
          } else {
            let x_1479 : f32 = u_xlat1.x;
            x_1472 = x_1479;
          }
          let x_1480 : f32 = x_1472;
          u_xlat13.z = x_1480;
        }
      }
    }
    let x_1483 : f32 = u_xlat4.x;
    let x_1486 : f32 = vs_TEXCOORD0.x;
    u_xlat1.x = (-(x_1483) + x_1486);
    let x_1490 : f32 = u_xlat13.x;
    let x_1492 : f32 = vs_TEXCOORD0.x;
    u_xlat19 = (x_1490 + -(x_1492));
    let x_1496 : f32 = u_xlat4.z;
    let x_1499 : f32 = vs_TEXCOORD0.y;
    u_xlat2.x = (-(x_1496) + x_1499);
    let x_1502 : bool = u_xlatb20;
    if (x_1502) {
      let x_1507 : f32 = u_xlat1.x;
      x_1503 = x_1507;
    } else {
      let x_1510 : f32 = u_xlat2.x;
      x_1503 = x_1510;
    }
    let x_1511 : f32 = x_1503;
    u_xlat1.x = x_1511;
    let x_1514 : f32 = u_xlat13.z;
    let x_1516 : f32 = vs_TEXCOORD0.y;
    u_xlat2.x = (x_1514 + -(x_1516));
    let x_1520 : bool = u_xlatb20;
    if (x_1520) {
      let x_1524 : f32 = u_xlat19;
      x_1521 = x_1524;
    } else {
      let x_1527 : f32 = u_xlat2.x;
      x_1521 = x_1527;
    }
    let x_1528 : f32 = x_1521;
    u_xlat19 = x_1528;
    let x_1530 : vec4<f32> = u_xlat3;
    let x_1533 : vec4<bool> = (vec4<f32>(x_1530.x, x_1530.y, x_1530.x, x_1530.x) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
    u_xlati2 = bitcast<vec2<i32>>((select(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u), vec2<bool>(x_1533.x, x_1533.y)) * vec2<u32>(4294967295u, 4294967295u)));
    let x_1540 : f32 = u_xlat1.x;
    let x_1541 : f32 = u_xlat19;
    u_xlat29 = (x_1540 + x_1541);
    let x_1545 : i32 = u_xlati27;
    let x_1548 : vec2<i32> = u_xlati2;
    let x_1550 : vec4<bool> = (vec4<i32>(x_1545, x_1545, x_1545, x_1545) != vec4<i32>(x_1548.x, x_1548.y, x_1548.x, x_1548.x));
    u_xlatb2 = vec2<bool>(x_1550.x, x_1550.y);
    let x_1552 : f32 = u_xlat29;
    u_xlat27 = (1.0f / x_1552);
    let x_1556 : f32 = u_xlat1.x;
    let x_1557 : f32 = u_xlat19;
    u_xlatb29 = (x_1556 < x_1557);
    let x_1559 : f32 = u_xlat19;
    let x_1561 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_1559, x_1561);
    let x_1565 : bool = u_xlatb29;
    if (x_1565) {
      let x_1571 : bool = u_xlatb2.x;
      x_1567 = x_1571;
    } else {
      let x_1574 : bool = u_xlatb2.y;
      x_1567 = x_1574;
    }
    let x_1575 : bool = x_1567;
    u_xlatb19 = x_1575;
    let x_1576 : f32 = u_xlat28;
    let x_1577 : f32 = u_xlat28;
    u_xlat28 = (x_1576 * x_1577);
    let x_1580 : f32 = u_xlat1.x;
    let x_1581 : f32 = u_xlat27;
    u_xlat27 = ((x_1580 * -(x_1581)) + 0.5f);
    let x_1585 : f32 = u_xlat28;
    u_xlat1.x = (x_1585 * 0.64999997615814208984f);
    let x_1589 : bool = u_xlatb19;
    let x_1590 : f32 = u_xlat27;
    u_xlat27 = select(0.0f, x_1590, x_1589);
    let x_1593 : f32 = u_xlat1.x;
    let x_1594 : f32 = u_xlat27;
    u_xlat27 = max(x_1593, x_1594);
    let x_1596 : f32 = u_xlat27;
    let x_1598 : vec3<f32> = u_xlat10;
    let x_1601 : vec2<f32> = vs_TEXCOORD0;
    let x_1602 : vec2<f32> = ((vec2<f32>(x_1596, x_1596) * vec2<f32>(x_1598.x, x_1598.x)) + x_1601);
    let x_1603 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1602.x, x_1602.y, x_1603.z, x_1603.w);
    let x_1605 : bool = u_xlatb20;
    if (x_1605) {
      let x_1610 : f32 = vs_TEXCOORD0.x;
      x_1606 = x_1610;
    } else {
      let x_1613 : f32 = u_xlat1.x;
      x_1606 = x_1613;
    }
    let x_1614 : f32 = x_1606;
    u_xlat2.x = x_1614;
    let x_1616 : bool = u_xlatb20;
    if (x_1616) {
      let x_1621 : f32 = u_xlat1.y;
      x_1617 = x_1621;
    } else {
      let x_1624 : f32 = vs_TEXCOORD0.y;
      x_1617 = x_1624;
    }
    let x_1625 : f32 = x_1617;
    u_xlat2.y = x_1625;
    let x_1630 : vec4<f32> = u_xlat2;
    let x_1632 : vec4<f32> = textureSampleLevel(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_1630.x, x_1630.y), 0.0f);
    u_xlat0 = vec3<f32>(x_1632.x, x_1632.y, x_1632.z);
  }
  let x_1634 : vec2<f32> = vs_TEXCOORD0;
  let x_1637 : vec4<f32> = x_17.x_Grain_TilingParams;
  let x_1641 : vec4<f32> = x_17.x_Grain_TilingParams;
  let x_1643 : vec2<f32> = ((x_1634 * vec2<f32>(x_1637.x, x_1637.y)) + vec2<f32>(x_1641.z, x_1641.w));
  let x_1644 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1643.x, x_1643.y, x_1644.z, x_1644.w);
  let x_1651 : vec4<f32> = u_xlat1;
  let x_1654 : f32 = x_17.x_GlobalMipBias.x;
  let x_1655 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1651.x, x_1651.y), x_1654);
  u_xlat27 = x_1655.w;
  let x_1657 : f32 = u_xlat27;
  u_xlat27 = (x_1657 + -0.5f);
  let x_1660 : f32 = u_xlat27;
  let x_1661 : f32 = u_xlat27;
  u_xlat27 = (x_1660 + x_1661);
  let x_1663 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_1663, vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_1671 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1671);
  let x_1676 : f32 = x_17.x_Grain_Params.y;
  let x_1678 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1676 * -(x_1678)) + 1.0f);
  let x_1683 : f32 = u_xlat27;
  let x_1685 : vec3<f32> = u_xlat0;
  u_xlat10 = (vec3<f32>(x_1683, x_1683, x_1683) * x_1685);
  let x_1687 : vec3<f32> = u_xlat10;
  let x_1690 : vec2<f32> = x_17.x_Grain_Params;
  u_xlat10 = (x_1687 * vec3<f32>(x_1690.x, x_1690.x, x_1690.x));
  let x_1693 : vec3<f32> = u_xlat10;
  let x_1694 : vec4<f32> = u_xlat1;
  let x_1697 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1693 * vec3<f32>(x_1694.x, x_1694.x, x_1694.x)) + x_1697);
  let x_1699 : vec3<f32> = u_xlat0;
  let x_1702 : vec3<f32> = (x_1699 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_1703 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
  let x_1705 : vec3<f32> = u_xlat0;
  let x_1707 : vec3<f32> = log2(abs(x_1705));
  let x_1708 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1707.x, x_1707.y, x_1707.z, x_1708.w);
  let x_1710 : vec4<f32> = u_xlat2;
  let x_1714 : vec3<f32> = (vec3<f32>(x_1710.x, x_1710.y, x_1710.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_1715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1714.x, x_1714.y, x_1714.z, x_1715.w);
  let x_1717 : vec4<f32> = u_xlat2;
  let x_1719 : vec3<f32> = exp2(vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
  let x_1720 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  let x_1722 : vec4<f32> = u_xlat2;
  let x_1729 : vec3<f32> = ((vec3<f32>(x_1722.x, x_1722.y, x_1722.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_1730 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
  let x_1735 : vec3<f32> = u_xlat0;
  let x_1737 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1735.x));
  u_xlatb0 = vec3<bool>(x_1737.x, x_1737.y, x_1737.z);
  let x_1742 : bool = u_xlatb0.x;
  if (x_1742) {
    let x_1747 : f32 = u_xlat1.x;
    x_1743 = x_1747;
  } else {
    let x_1750 : f32 = u_xlat2.x;
    x_1743 = x_1750;
  }
  let x_1751 : f32 = x_1743;
  SV_Target0.x = x_1751;
  let x_1755 : bool = u_xlatb0.y;
  if (x_1755) {
    let x_1760 : f32 = u_xlat1.y;
    x_1756 = x_1760;
  } else {
    let x_1763 : f32 = u_xlat2.y;
    x_1756 = x_1763;
  }
  let x_1764 : f32 = x_1756;
  SV_Target0.y = x_1764;
  let x_1767 : bool = u_xlatb0.z;
  if (x_1767) {
    let x_1772 : f32 = u_xlat1.z;
    x_1768 = x_1772;
  } else {
    let x_1775 : f32 = u_xlat2.z;
    x_1768 = x_1775;
  }
  let x_1776 : f32 = x_1768;
  SV_Target0.z = x_1776;
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


