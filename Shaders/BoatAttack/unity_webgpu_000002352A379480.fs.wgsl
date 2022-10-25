struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

@group(1) @binding(1) var<uniform> x_112 : UnityPerDraw;

@group(0) @binding(0) var Texture2D_B222E8F : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_B222E8F : sampler;

var<private> vs_INTERP3 : vec4<f32>;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(1) var Texture2D_D9BFD5F1 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_D9BFD5F1 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn int_bitfieldInsert_i1_i1_i1_i1_(base : ptr<function, i32>, insert : ptr<function, i32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> i32 {
  var mask : u32;
  let x_19 : i32 = *(bits);
  let x_23 : i32 = *(offset_1);
  mask = (~((4294967295u << bitcast<u32>(x_19))) << bitcast<u32>(x_23));
  let x_26 : i32 = *(base);
  let x_28 : u32 = mask;
  let x_31 : i32 = *(insert);
  let x_33 : i32 = *(offset_1);
  let x_36 : u32 = mask;
  return bitcast<i32>(((bitcast<u32>(x_26) & ~(x_28)) | ((bitcast<u32>(x_31) << bitcast<u32>(x_33)) & x_36)));
}

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlatb6 : bool;
  var u_xlat2 : vec3<f32>;
  var x_92 : f32;
  var u_xlat1 : vec4<f32>;
  var x_121 : f32;
  var x_133 : f32;
  var u_xlatu0 : vec3<u32>;
  var u_xlatu4 : u32;
  var u_xlatu6 : u32;
  var u_xlati4 : i32;
  var u_xlati2 : i32;
  var u_xlatu2 : u32;
  var u_xlati0 : i32;
  var param : i32;
  var param_1 : i32;
  var param_2 : i32;
  var param_3 : i32;
  var u_xlatb4 : bool;
  var u_xlat4 : f32;
  var x_314 : f32;
  var x_326 : f32;
  var u_xlatb0 : vec2<bool>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_49 : vec3<f32> = vs_INTERP0;
  let x_59 : vec3<f32> = x_55.x_WorldSpaceCameraPos;
  let x_60 : vec3<f32> = (-(x_49) + x_59);
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_65.x, x_65.y, x_65.z), vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_70);
  let x_72 : f32 = u_xlat6;
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec3<f32> = (vec3<f32>(x_72, x_72, x_72) * vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_86 : f32 = x_55.unity_OrthoParams.w;
  u_xlatb6 = (x_86 == 0.0f);
  let x_91 : bool = u_xlatb6;
  if (x_91) {
    let x_97 : f32 = u_xlat0.y;
    x_92 = x_97;
  } else {
    let x_102 : f32 = x_55.unity_MatrixV[1i].z;
    x_92 = x_102;
  }
  let x_103 : f32 = x_92;
  u_xlat2.x = x_103;
  let x_107 : vec3<f32> = u_xlat2;
  let x_115 : vec4<f32> = x_112.unity_WorldToObject[1i];
  let x_117 : vec3<f32> = (vec3<f32>(x_107.x, x_107.x, x_107.x) * vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_120 : bool = u_xlatb6;
  if (x_120) {
    let x_125 : f32 = u_xlat0.x;
    x_121 = x_125;
  } else {
    let x_129 : f32 = x_55.unity_MatrixV[0i].z;
    x_121 = x_129;
  }
  let x_130 : f32 = x_121;
  u_xlat0.x = x_130;
  let x_132 : bool = u_xlatb6;
  if (x_132) {
    let x_137 : f32 = u_xlat0.z;
    x_133 = x_137;
  } else {
    let x_141 : f32 = x_55.unity_MatrixV[2i].z;
    x_133 = x_141;
  }
  let x_142 : f32 = x_133;
  u_xlat2.x = x_142;
  let x_145 : vec4<f32> = x_112.unity_WorldToObject[0i];
  let x_147 : vec4<f32> = u_xlat0;
  let x_150 : vec4<f32> = u_xlat1;
  let x_152 : vec3<f32> = ((vec3<f32>(x_145.x, x_145.y, x_145.z) * vec3<f32>(x_147.x, x_147.x, x_147.x)) + vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_152.x, x_153.y, x_152.y, x_152.z);
  let x_156 : vec4<f32> = x_112.unity_WorldToObject[2i];
  let x_158 : vec3<f32> = u_xlat2;
  let x_161 : vec4<f32> = u_xlat0;
  let x_163 : vec3<f32> = ((vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(x_158.x, x_158.x, x_158.x)) + vec3<f32>(x_161.x, x_161.z, x_161.w));
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat6;
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_180 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = x_55.x_ScreenParams;
  let x_186 : vec3<f32> = (abs(vec3<f32>(x_180.x, x_180.y, x_180.z)) * vec3<f32>(x_184.x, x_184.y, x_184.x));
  let x_187 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_192 : vec4<f32> = u_xlat0;
  u_xlatu0 = vec3<u32>(vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_197 : u32 = u_xlatu0.z;
  u_xlatu4 = (x_197 * 1025u);
  let x_201 : u32 = u_xlatu4;
  u_xlatu6 = (x_201 >> 6u);
  let x_205 : u32 = u_xlatu6;
  let x_206 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_205 ^ x_206));
  let x_209 : i32 = u_xlati4;
  u_xlatu4 = (bitcast<u32>(x_209) * 9u);
  let x_213 : u32 = u_xlatu4;
  u_xlatu6 = (x_213 >> 11u);
  let x_216 : u32 = u_xlatu6;
  let x_217 : u32 = u_xlatu4;
  u_xlati4 = bitcast<i32>((x_216 ^ x_217));
  let x_220 : i32 = u_xlati4;
  u_xlati4 = (x_220 * 32769i);
  let x_224 : i32 = u_xlati4;
  let x_227 : u32 = u_xlatu0.y;
  u_xlati2 = bitcast<i32>((bitcast<u32>(x_224) ^ x_227));
  let x_231 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_231) * 1025u);
  let x_234 : u32 = u_xlatu2;
  u_xlatu4 = (x_234 >> 6u);
  let x_236 : u32 = u_xlatu4;
  let x_237 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_236 ^ x_237));
  let x_240 : i32 = u_xlati2;
  u_xlatu2 = (bitcast<u32>(x_240) * 9u);
  let x_243 : u32 = u_xlatu2;
  u_xlatu4 = (x_243 >> 11u);
  let x_245 : u32 = u_xlatu4;
  let x_246 : u32 = u_xlatu2;
  u_xlati2 = bitcast<i32>((x_245 ^ x_246));
  let x_249 : i32 = u_xlati2;
  u_xlati2 = (x_249 * 32769i);
  let x_252 : i32 = u_xlati2;
  let x_255 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((bitcast<u32>(x_252) ^ x_255));
  let x_258 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_258) * 1025u);
  let x_263 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_263 >> 6u);
  let x_265 : u32 = u_xlatu2;
  let x_267 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_265 ^ x_267));
  let x_270 : i32 = u_xlati0;
  u_xlatu0.x = (bitcast<u32>(x_270) * 9u);
  let x_275 : u32 = u_xlatu0.x;
  u_xlatu2 = (x_275 >> 11u);
  let x_277 : u32 = u_xlatu2;
  let x_279 : u32 = u_xlatu0.x;
  u_xlati0 = bitcast<i32>((x_277 ^ x_279));
  let x_282 : i32 = u_xlati0;
  u_xlati0 = (x_282 * 32769i);
  param = 1065353216i;
  let x_288 : i32 = u_xlati0;
  param_1 = x_288;
  param_2 = 0i;
  param_3 = 23i;
  let x_291 : i32 = int_bitfieldInsert_i1_i1_i1_i1_(&(param), &(param_1), &(param_2), &(param_3));
  u_xlat0.x = bitcast<f32>(x_291);
  let x_295 : f32 = u_xlat0.x;
  u_xlat0.x = (x_295 + -1.0f);
  let x_300 : f32 = u_xlat0.x;
  u_xlat2.x = (-(x_300) + 1.0f);
  let x_307 : f32 = x_112.unity_LODFade.x;
  u_xlatb4 = (x_307 < 0.0f);
  let x_310 : f32 = x_112.unity_LODFade.x;
  u_xlat6 = (x_310 + 1.0f);
  let x_313 : bool = u_xlatb4;
  if (x_313) {
    let x_317 : f32 = u_xlat6;
    x_314 = x_317;
  } else {
    let x_320 : f32 = x_112.unity_LODFade.x;
    x_314 = x_320;
  }
  let x_321 : f32 = x_314;
  u_xlat4 = x_321;
  let x_323 : f32 = u_xlat4;
  u_xlatb6 = (0.5f >= x_323);
  let x_325 : bool = u_xlatb6;
  if (x_325) {
    let x_330 : f32 = u_xlat0.x;
    x_326 = x_330;
  } else {
    let x_333 : f32 = u_xlat2.x;
    x_326 = x_333;
  }
  let x_334 : f32 = x_326;
  u_xlat0.x = x_334;
  let x_336 : f32 = u_xlat4;
  let x_340 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_336 * 2.0f) + -(x_340));
  let x_356 : vec4<f32> = vs_INTERP3;
  let x_359 : f32 = x_55.x_GlobalMipBias.x;
  let x_360 : vec4<f32> = textureSampleBias(Texture2D_B222E8F, samplerTexture2D_B222E8F, vec2<f32>(x_356.x, x_356.y), x_359);
  u_xlat2.x = x_360.w;
  let x_364 : f32 = u_xlat2.x;
  let x_366 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_364 * x_366) + -0.400000006f);
  let x_375 : f32 = u_xlat0.x;
  u_xlatb0.x = (x_375 < 0.0f);
  let x_379 : bool = u_xlatb0.x;
  if (((select(0i, 1i, x_379) * -1i) != 0i)) {
    discard;
  }
  let x_390 : f32 = vs_INTERP2.w;
  u_xlatb0.x = (0.0f < x_390);
  let x_394 : f32 = x_112.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_394 >= 0.0f);
  let x_398 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_398);
  let x_402 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_402);
  let x_406 : f32 = u_xlat0.y;
  let x_408 : f32 = u_xlat0.x;
  u_xlat0.x = (x_406 * x_408);
  let x_412 : vec3<f32> = vs_INTERP1;
  let x_414 : vec4<f32> = vs_INTERP2;
  u_xlat2 = (vec3<f32>(x_412.z, x_412.x, x_412.y) * vec3<f32>(x_414.y, x_414.z, x_414.x));
  let x_417 : vec3<f32> = vs_INTERP1;
  let x_419 : vec4<f32> = vs_INTERP2;
  let x_422 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_417.y, x_417.z, x_417.x) * vec3<f32>(x_419.z, x_419.x, x_419.y)) + -(x_422));
  let x_425 : vec3<f32> = u_xlat2;
  let x_426 : vec4<f32> = u_xlat0;
  let x_428 : vec3<f32> = (x_425 * vec3<f32>(x_426.x, x_426.x, x_426.x));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_436 : vec4<f32> = vs_INTERP3;
  let x_439 : f32 = x_55.x_GlobalMipBias.x;
  let x_440 : vec4<f32> = textureSampleBias(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1, vec2<f32>(x_436.x, x_436.y), x_439);
  u_xlat1 = x_440;
  let x_441 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_441 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_446 : vec4<f32> = u_xlat1;
  let x_447 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(x_446, x_447);
  let x_449 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_449);
  let x_451 : f32 = u_xlat6;
  let x_453 : vec4<f32> = u_xlat1;
  let x_455 : vec3<f32> = (vec3<f32>(x_451, x_451, x_451) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat0;
  let x_460 : vec4<f32> = u_xlat1;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460.y, x_460.y, x_460.y));
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_465 : vec4<f32> = u_xlat1;
  let x_467 : vec4<f32> = vs_INTERP2;
  let x_470 : vec4<f32> = u_xlat0;
  let x_472 : vec3<f32> = ((vec3<f32>(x_465.x, x_465.x, x_465.x) * vec3<f32>(x_467.x, x_467.y, x_467.z)) + vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat1;
  let x_477 : vec3<f32> = vs_INTERP1;
  let x_479 : vec4<f32> = u_xlat0;
  let x_481 : vec3<f32> = ((vec3<f32>(x_475.z, x_475.z, x_475.z) * x_477) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat0;
  let x_486 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_484.x, x_484.y, x_484.z), vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_489);
  let x_493 : f32 = u_xlat6;
  let x_495 : vec4<f32> = u_xlat0;
  let x_497 : vec3<f32> = (vec3<f32>(x_493, x_493, x_493) * vec3<f32>(x_495.x, x_495.y, x_495.z));
  let x_498 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

