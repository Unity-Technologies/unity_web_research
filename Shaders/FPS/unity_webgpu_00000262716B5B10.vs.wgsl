struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_FaceColor : vec4<f32>,
  x_FaceDilate : f32,
  x_OutlineSoftness : f32,
  @size(8)
  padding_1 : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_WeightNormal : f32,
  x_WeightBold : f32,
  x_ScaleRatioA : f32,
  x_VertexOffsetX : f32,
  x_VertexOffsetY : f32,
  @size(8)
  padding_2 : u32,
  x_ClipRect : vec4<f32>,
  x_MaskSoftnessX : f32,
  x_MaskSoftnessY : f32,
  x_GradientScale : f32,
  x_ScaleX : f32,
  x_ScaleY : f32,
  x_PerspectiveFilter : f32,
}

var<private> u_xlat0 : vec2<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(5) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat8 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlatb12 : bool;

var<private> vs_COLOR1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat4 : f32;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_318 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  u_xlat0 = (vec2<f32>(x_13.x, x_13.y) + vec2<f32>(x_24, x_27));
  let x_32 : vec2<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_32.y, x_32.y, x_32.y, x_32.y) * x_38);
  let x_42 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_43 : vec2<f32> = u_xlat0;
  let x_46 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_42 * vec4<f32>(x_43.x, x_43.x, x_43.x, x_43.x)) + x_46);
  let x_49 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_50 : vec4<f32> = in_POSITION0;
  let x_53 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_49 * vec4<f32>(x_50.z, x_50.z, x_50.z, x_50.z)) + x_53);
  let x_56 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat2 = (x_56 + x_59);
  let x_62 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_64 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat1;
  let x_69 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_64.w, x_64.w, x_64.w)) + vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_72 : vec4<f32> = u_xlat1;
  let x_77 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_78 : vec3<f32> = (-(vec3<f32>(x_72.x, x_72.y, x_72.z)) + x_77);
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_82 : vec4<f32> = u_xlat2;
  let x_86 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_82.y, x_82.y, x_82.y, x_82.y) * x_86);
  let x_89 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_90 : vec4<f32> = u_xlat2;
  let x_93 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_89 * vec4<f32>(x_90.x, x_90.x, x_90.x, x_90.x)) + x_93);
  let x_96 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_97 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_96 * vec4<f32>(x_97.z, x_97.z, x_97.z, x_97.z)) + x_100);
  let x_103 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_104 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_103 * vec4<f32>(x_104.w, x_104.w, x_104.w, x_104.w)) + x_107);
  let x_115 : vec4<f32> = u_xlat2;
  gl_Position = x_115;
  let x_119 : vec4<f32> = in_COLOR0;
  let x_122 : vec4<f32> = x_19.x_FaceColor;
  u_xlat3 = (x_119 * x_122);
  let x_124 : vec4<f32> = u_xlat3;
  let x_126 : vec4<f32> = u_xlat3;
  let x_128 : vec3<f32> = (vec3<f32>(x_124.w, x_124.w, x_124.w) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_128.x, x_128.y, x_128.z, x_129.w);
  let x_132 : vec4<f32> = u_xlat3;
  vs_COLOR0 = x_132;
  let x_135 : vec4<f32> = u_xlat1;
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat8 = dot(vec3<f32>(x_135.x, x_135.y, x_135.z), vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_140 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_140);
  let x_142 : f32 = u_xlat8;
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_151 : vec3<f32> = in_NORMAL0;
  let x_153 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_151, vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_158 : vec3<f32> = in_NORMAL0;
  let x_160 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_158, vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_164 : vec3<f32> = in_NORMAL0;
  let x_166 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_164, vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_171 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat8 = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_176 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_176);
  let x_178 : f32 = u_xlat8;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat8 = dot(vec3<f32>(x_185.x, x_185.y, x_185.z), vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_191 : vec4<f32> = x_19.x_ScreenParams;
  let x_195 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_197 : vec2<f32> = (vec2<f32>(x_191.y, x_191.y) * vec2<f32>(x_195.x, x_195.y));
  let x_198 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_197.x, x_197.y, x_198.z, x_198.w);
  let x_201 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_204 : vec4<f32> = x_19.x_ScreenParams;
  let x_207 : vec4<f32> = u_xlat1;
  let x_209 : vec2<f32> = ((vec2<f32>(x_201.x, x_201.y) * vec2<f32>(x_204.x, x_204.x)) + vec2<f32>(x_207.x, x_207.y));
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_210.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat1;
  let x_217 : f32 = x_19.x_ScaleX;
  let x_220 : f32 = x_19.x_ScaleY;
  let x_222 : vec2<f32> = (abs(vec2<f32>(x_212.x, x_212.y)) * vec2<f32>(x_217, x_220));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_223.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec2<f32> = (vec2<f32>(x_225.w, x_225.w) / vec2<f32>(x_227.x, x_227.y));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_230.z, x_230.w);
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec2<f32>(x_233.x, x_233.y), vec2<f32>(x_235.x, x_235.y));
  let x_240 : f32 = x_19.x_MaskSoftnessX;
  let x_243 : f32 = x_19.x_MaskSoftnessY;
  let x_248 : vec4<f32> = u_xlat1;
  let x_250 : vec2<f32> = ((vec2<f32>(x_240, x_243) * vec2<f32>(0.25f, 0.25f)) + vec2<f32>(x_248.x, x_248.y));
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_251.z, x_251.w);
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / vec2<f32>(x_254.x, x_254.y));
  let x_257 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_257.x, x_257.y, x_256.x, x_256.y);
  let x_259 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_259);
  let x_265 : f32 = in_TEXCOORD1.y;
  let x_269 : f32 = x_19.x_GradientScale;
  u_xlat1.x = (abs(x_265) * x_269);
  let x_272 : f32 = u_xlat12;
  let x_274 : f32 = u_xlat1.x;
  u_xlat12 = (x_272 * x_274);
  let x_276 : f32 = u_xlat12;
  u_xlat1.x = (x_276 * 1.5f);
  let x_283 : f32 = x_19.x_PerspectiveFilter;
  u_xlat5.x = (-(x_283) + 1.0f);
  let x_289 : f32 = u_xlat5.x;
  let x_291 : f32 = u_xlat1.x;
  u_xlat5.x = (x_289 * abs(x_291));
  let x_295 : f32 = u_xlat12;
  let x_298 : f32 = u_xlat5.x;
  u_xlat12 = ((x_295 * 1.5f) + -(x_298));
  let x_301 : f32 = u_xlat8;
  let x_303 : f32 = u_xlat12;
  let x_306 : f32 = u_xlat5.x;
  u_xlat8 = ((abs(x_301) * x_303) + x_306);
  let x_313 : f32 = x_19.glstate_matrix_projection[3i].w;
  u_xlatb12 = (x_313 == 0.0f);
  let x_316 : bool = u_xlatb12;
  if (x_316) {
    let x_321 : f32 = u_xlat8;
    x_318 = x_321;
  } else {
    let x_324 : f32 = u_xlat1.x;
    x_318 = x_324;
  }
  let x_325 : f32 = x_318;
  u_xlat8 = x_325;
  let x_328 : f32 = x_19.x_OutlineSoftness;
  let x_331 : f32 = x_19.x_ScaleRatioA;
  u_xlat12 = (x_328 * x_331);
  let x_333 : f32 = u_xlat12;
  let x_334 : f32 = u_xlat8;
  u_xlat12 = ((x_333 * x_334) + 1.0f);
  let x_337 : f32 = u_xlat8;
  let x_338 : f32 = u_xlat12;
  u_xlat1.x = (x_337 / x_338);
  let x_343 : f32 = x_19.x_OutlineWidth;
  let x_345 : f32 = x_19.x_ScaleRatioA;
  u_xlat8 = (x_343 * x_345);
  let x_348 : f32 = u_xlat1.x;
  let x_349 : f32 = u_xlat8;
  u_xlat8 = (x_348 * x_349);
  let x_351 : f32 = u_xlat8;
  u_xlat12 = min(x_351, 1.0f);
  let x_353 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_353);
  let x_356 : f32 = in_COLOR0.w;
  let x_359 : f32 = x_19.x_OutlineColor.w;
  u_xlat2.w = (x_356 * x_359);
  let x_362 : vec4<f32> = u_xlat2;
  let x_365 : vec4<f32> = x_19.x_OutlineColor;
  let x_367 : vec3<f32> = (vec3<f32>(x_362.w, x_362.w, x_362.w) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat3;
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_370) + x_372);
  let x_375 : f32 = u_xlat12;
  let x_377 : vec4<f32> = u_xlat2;
  let x_379 : vec4<f32> = u_xlat3;
  vs_COLOR1 = ((vec4<f32>(x_375, x_375, x_375, x_375) * x_377) + x_379);
  let x_383 : vec4<f32> = x_19.x_ClipRect;
  u_xlat2 = max(x_383, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_387 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_387, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_391 : vec2<f32> = u_xlat0;
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat5 = (x_391 + -(vec2<f32>(x_392.x, x_392.y)));
  let x_396 : vec2<f32> = u_xlat0;
  let x_400 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_396 * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_400.x, x_400.y)));
  let x_404 : vec4<f32> = u_xlat2;
  let x_407 : vec2<f32> = u_xlat0;
  let x_408 : vec2<f32> = (-(vec2<f32>(x_404.z, x_404.w)) + x_407);
  let x_409 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat2;
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat0 = (-(vec2<f32>(x_411.x, x_411.y)) + vec2<f32>(x_414.z, x_414.w));
  let x_418 : vec2<f32> = u_xlat5;
  let x_419 : vec2<f32> = u_xlat0;
  let x_420 : vec2<f32> = (x_418 / x_419);
  let x_421 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_421.x, x_421.y, x_420.x, x_420.y);
  let x_424 : vec2<f32> = in_TEXCOORD0;
  let x_425 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_424.x, x_424.y, x_425.z, x_425.w);
  let x_429 : f32 = in_TEXCOORD1.y;
  u_xlatb0 = (0.0f >= x_429);
  let x_431 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_431);
  let x_437 : f32 = x_19.x_WeightNormal;
  let x_441 : f32 = x_19.x_WeightBold;
  u_xlat4 = (-(x_437) + x_441);
  let x_444 : f32 = u_xlat0.x;
  let x_445 : f32 = u_xlat4;
  let x_448 : f32 = x_19.x_WeightNormal;
  u_xlat0.x = ((x_444 * x_445) + x_448);
  let x_452 : f32 = u_xlat0.x;
  let x_456 : f32 = x_19.x_FaceDilate;
  u_xlat0.x = ((x_452 * 0.25f) + x_456);
  let x_460 : f32 = u_xlat0.x;
  let x_462 : f32 = x_19.x_ScaleRatioA;
  u_xlat0.x = (x_460 * x_462);
  let x_466 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_466) * 0.5f) + 0.5f);
  let x_473 : f32 = u_xlat0.x;
  let x_475 : f32 = u_xlat1.x;
  u_xlat1.w = ((x_473 * x_475) + -0.5f);
  let x_481 : vec4<f32> = u_xlat1;
  let x_482 : vec2<f32> = vec2<f32>(x_481.x, x_481.w);
  let x_483 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_482.x, x_483.y, x_483.z, x_482.y);
  let x_485 : f32 = u_xlat8;
  let x_489 : f32 = u_xlat1.w;
  vs_TEXCOORD1.y = ((-(x_485) * 0.5f) + x_489);
  let x_493 : f32 = u_xlat8;
  let x_496 : f32 = u_xlat1.w;
  vs_TEXCOORD1.z = ((x_493 * 0.5f) + x_496);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(4) in_TEXCOORD1_param : vec2<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD0, vs_TEXCOORD1);
}

