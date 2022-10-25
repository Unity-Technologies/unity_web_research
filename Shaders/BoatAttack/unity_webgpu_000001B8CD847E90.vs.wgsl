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
  x_UnderlayOffsetX : f32,
  x_UnderlayOffsetY : f32,
  x_UnderlayDilate : f32,
  x_UnderlaySoftness : f32,
  x_WeightNormal : f32,
  x_WeightBold : f32,
  x_ScaleRatioA : f32,
  x_ScaleRatioC : f32,
  x_VertexOffsetX : f32,
  x_VertexOffsetY : f32,
  @size(4)
  padding_2 : u32,
  x_ClipRect : vec4<f32>,
  x_MaskSoftnessX : f32,
  x_MaskSoftnessY : f32,
  x_TextureWidth : f32,
  x_TextureHeight : f32,
  x_GradientScale : f32,
  x_ScaleX : f32,
  x_ScaleY : f32,
  x_PerspectiveFilter : f32,
  x_Sharpness : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_COLOR1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat14 : f32;
  var u_xlat21 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
  var x_363 : f32;
  var u_xlatb0 : bool;
  var u_xlat7 : vec3<f32>;
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
  let x_122 : f32 = x_19.x_FaceColor.w;
  vs_COLOR0.w = x_122;
  let x_126 : vec4<f32> = in_COLOR0;
  let x_127 : vec3<f32> = vec3<f32>(x_126.x, x_126.y, x_126.z);
  let x_128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  u_xlat3.w = 1.0f;
  let x_134 : vec4<f32> = u_xlat3;
  let x_136 : vec4<f32> = x_19.x_FaceColor;
  u_xlat4 = (x_134 * x_136);
  let x_138 : vec4<f32> = u_xlat4;
  let x_140 : vec4<f32> = u_xlat4;
  let x_142 : vec3<f32> = (vec3<f32>(x_138.w, x_138.w, x_138.w) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = vec3<f32>(x_145.x, x_145.y, x_145.z);
  let x_147 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec4<f32> = u_xlat2;
  let x_152 : vec3<f32> = -(vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : f32 = u_xlat4.w;
  u_xlat5.w = -(x_156);
  let x_162 : vec4<f32> = x_19.x_OutlineColor;
  let x_165 : vec4<f32> = x_19.x_OutlineColor;
  let x_167 : vec3<f32> = (vec3<f32>(x_162.w, x_162.w, x_162.w) * vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : f32 = x_19.x_OutlineColor.w;
  u_xlat6.w = x_171;
  let x_173 : vec4<f32> = u_xlat5;
  let x_174 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_173 + x_174);
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_182);
  let x_184 : f32 = u_xlat14;
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec3<f32> = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_193 : vec3<f32> = in_NORMAL0;
  let x_195 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_193, vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : vec3<f32> = in_NORMAL0;
  let x_202 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_200, vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_206 : vec3<f32> = in_NORMAL0;
  let x_208 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_206, vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_213 : vec4<f32> = u_xlat2;
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat14 = dot(vec3<f32>(x_213.x, x_213.y, x_213.z), vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_218);
  let x_220 : f32 = u_xlat14;
  let x_222 : vec4<f32> = u_xlat2;
  let x_224 : vec3<f32> = (vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat14 = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec4<f32> = x_19.x_ScreenParams;
  let x_237 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_239 : vec2<f32> = (vec2<f32>(x_233.y, x_233.y) * vec2<f32>(x_237.x, x_237.y));
  let x_240 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_239.x, x_239.y, x_240.z, x_240.w);
  let x_243 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_246 : vec4<f32> = x_19.x_ScreenParams;
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec2<f32> = ((vec2<f32>(x_243.x, x_243.y) * vec2<f32>(x_246.x, x_246.x)) + vec2<f32>(x_249.x, x_249.y));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_251.y, x_252.z, x_252.w);
  let x_254 : vec4<f32> = u_xlat1;
  let x_259 : f32 = x_19.x_ScaleX;
  let x_262 : f32 = x_19.x_ScaleY;
  let x_264 : vec2<f32> = (abs(vec2<f32>(x_254.x, x_254.y)) * vec2<f32>(x_259, x_262));
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
  let x_267 : vec4<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec2<f32> = (vec2<f32>(x_267.w, x_267.w) / vec2<f32>(x_269.x, x_269.y));
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
  let x_275 : vec4<f32> = u_xlat1;
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_275.x, x_275.y), vec2<f32>(x_277.x, x_277.y));
  let x_282 : f32 = x_19.x_MaskSoftnessX;
  let x_285 : f32 = x_19.x_MaskSoftnessY;
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec2<f32> = ((vec2<f32>(x_282, x_285) * vec2<f32>(0.25f, 0.25f)) + vec2<f32>(x_290.x, x_290.y));
  let x_293 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_292.x, x_292.y, x_293.z, x_293.w);
  let x_296 : vec4<f32> = u_xlat1;
  let x_298 : vec2<f32> = (vec2<f32>(0.25f, 0.25f) / vec2<f32>(x_296.x, x_296.y));
  let x_299 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_299.x, x_299.y, x_298.x, x_298.y);
  let x_301 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_301);
  let x_307 : f32 = in_TEXCOORD1.y;
  let x_311 : f32 = x_19.x_GradientScale;
  u_xlat1.x = (abs(x_307) * x_311);
  let x_317 : f32 = x_19.x_Sharpness;
  u_xlat8.x = (x_317 + 1.0f);
  let x_321 : f32 = u_xlat8.x;
  let x_323 : f32 = u_xlat1.x;
  u_xlat1.x = (x_321 * x_323);
  let x_326 : f32 = u_xlat21;
  let x_328 : f32 = u_xlat1.x;
  u_xlat8.x = (x_326 * x_328);
  let x_334 : f32 = x_19.x_PerspectiveFilter;
  u_xlat15 = (-(x_334) + 1.0f);
  let x_337 : f32 = u_xlat15;
  let x_339 : f32 = u_xlat8.x;
  u_xlat15 = (x_337 * abs(x_339));
  let x_342 : f32 = u_xlat21;
  let x_344 : f32 = u_xlat1.x;
  let x_346 : f32 = u_xlat15;
  u_xlat21 = ((x_342 * x_344) + -(x_346));
  let x_349 : f32 = u_xlat14;
  let x_351 : f32 = u_xlat21;
  let x_353 : f32 = u_xlat15;
  u_xlat14 = ((abs(x_349) * x_351) + x_353);
  let x_359 : f32 = x_19.glstate_matrix_projection[3i].w;
  u_xlatb21 = (x_359 == 0.0f);
  let x_362 : bool = u_xlatb21;
  if (x_362) {
    let x_366 : f32 = u_xlat14;
    x_363 = x_366;
  } else {
    let x_369 : f32 = u_xlat8.x;
    x_363 = x_369;
  }
  let x_370 : f32 = x_363;
  u_xlat14 = x_370;
  let x_373 : f32 = x_19.x_OutlineSoftness;
  let x_376 : f32 = x_19.x_ScaleRatioA;
  u_xlat21 = (x_373 * x_376);
  let x_378 : f32 = u_xlat21;
  let x_379 : f32 = u_xlat14;
  u_xlat21 = ((x_378 * x_379) + 1.0f);
  let x_382 : f32 = u_xlat14;
  let x_383 : f32 = u_xlat21;
  u_xlat1.x = (x_382 / x_383);
  let x_388 : f32 = x_19.x_OutlineWidth;
  let x_390 : f32 = x_19.x_ScaleRatioA;
  u_xlat21 = (x_388 * x_390);
  let x_393 : f32 = u_xlat1.x;
  let x_394 : f32 = u_xlat21;
  u_xlat21 = (x_393 * x_394);
  let x_396 : f32 = u_xlat21;
  u_xlat8.x = min(x_396, 1.0f);
  let x_400 : f32 = u_xlat8.x;
  u_xlat8.x = sqrt(x_400);
  let x_403 : vec4<f32> = u_xlat5;
  let x_404 : vec2<f32> = u_xlat8;
  u_xlat2 = (x_403 * vec4<f32>(x_404.x, x_404.x, x_404.x, x_404.x));
  let x_409 : vec4<f32> = u_xlat4;
  let x_411 : vec4<f32> = u_xlat4;
  let x_414 : vec4<f32> = u_xlat2;
  let x_416 : vec3<f32> = ((vec3<f32>(x_409.x, x_409.y, x_409.z) * vec3<f32>(x_411.w, x_411.w, x_411.w)) + vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : vec4<f32> = vs_COLOR1;
  vs_COLOR1 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_420 : f32 = u_xlat3.w;
  let x_422 : f32 = x_19.x_FaceColor.w;
  let x_425 : f32 = u_xlat2.w;
  vs_COLOR1.w = ((x_420 * x_422) + x_425);
  let x_431 : vec4<f32> = x_19.x_ClipRect;
  u_xlat2 = max(x_431, vec4<f32>(-20000000000.0f, -20000000000.0f, -20000000000.0f, -20000000000.0f));
  let x_435 : vec4<f32> = u_xlat2;
  u_xlat2 = min(x_435, vec4<f32>(20000000000.0f, 20000000000.0f, 20000000000.0f, 20000000000.0f));
  let x_439 : vec2<f32> = u_xlat0;
  let x_440 : vec4<f32> = u_xlat2;
  u_xlat8 = (x_439 + -(vec2<f32>(x_440.x, x_440.y)));
  let x_444 : vec2<f32> = u_xlat0;
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_444 * vec2<f32>(2.0f, 2.0f)) + -(vec2<f32>(x_448.x, x_448.y)));
  let x_452 : vec4<f32> = u_xlat2;
  let x_455 : vec2<f32> = u_xlat0;
  let x_456 : vec2<f32> = (-(vec2<f32>(x_452.z, x_452.w)) + x_455);
  let x_457 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat2;
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat0 = (-(vec2<f32>(x_459.x, x_459.y)) + vec2<f32>(x_462.z, x_462.w));
  let x_466 : vec2<f32> = u_xlat8;
  let x_467 : vec2<f32> = u_xlat0;
  let x_468 : vec2<f32> = (x_466 / x_467);
  let x_469 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_469.x, x_469.y, x_468.x, x_468.y);
  let x_472 : vec2<f32> = in_TEXCOORD0;
  let x_473 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_472.x, x_472.y, x_473.z, x_473.w);
  let x_477 : f32 = in_TEXCOORD1.y;
  u_xlatb0 = (0.0f >= x_477);
  let x_479 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_479);
  let x_486 : f32 = x_19.x_WeightNormal;
  let x_490 : f32 = x_19.x_WeightBold;
  u_xlat7.x = (-(x_486) + x_490);
  let x_494 : f32 = u_xlat0.x;
  let x_496 : f32 = u_xlat7.x;
  let x_499 : f32 = x_19.x_WeightNormal;
  u_xlat0.x = ((x_494 * x_496) + x_499);
  let x_503 : f32 = u_xlat0.x;
  let x_507 : f32 = x_19.x_FaceDilate;
  u_xlat0.x = ((x_503 * 0.25f) + x_507);
  let x_511 : f32 = u_xlat0.x;
  let x_513 : f32 = x_19.x_ScaleRatioA;
  u_xlat0.x = (x_511 * x_513);
  let x_517 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_517) * 0.5f) + 0.5f);
  let x_524 : f32 = u_xlat0.x;
  let x_526 : f32 = u_xlat1.x;
  u_xlat1.w = ((x_524 * x_526) + -0.5f);
  let x_532 : vec4<f32> = u_xlat1;
  let x_533 : vec2<f32> = vec2<f32>(x_532.x, x_532.w);
  let x_534 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_533.x, x_534.y, x_534.z, x_533.y);
  let x_536 : f32 = u_xlat21;
  let x_540 : f32 = u_xlat1.w;
  vs_TEXCOORD1.y = ((-(x_536) * 0.5f) + x_540);
  let x_543 : f32 = u_xlat21;
  let x_546 : f32 = u_xlat1.w;
  vs_TEXCOORD1.z = ((x_543 * 0.5f) + x_546);
  let x_551 : f32 = in_COLOR0.w;
  vs_TEXCOORD3.z = x_551;
  vs_TEXCOORD3.w = 0.0f;
  let x_556 : f32 = x_19.x_UnderlaySoftness;
  let x_559 : f32 = x_19.x_UnderlayDilate;
  let x_562 : f32 = x_19.x_UnderlayOffsetX;
  let x_565 : f32 = x_19.x_UnderlayOffsetY;
  let x_569 : f32 = x_19.x_ScaleRatioC;
  let x_571 : f32 = x_19.x_ScaleRatioC;
  let x_573 : f32 = x_19.x_ScaleRatioC;
  let x_575 : f32 = x_19.x_ScaleRatioC;
  let x_576 : vec4<f32> = vec4<f32>(x_569, x_571, x_573, x_575);
  u_xlat1 = (vec4<f32>(x_556, x_559, x_562, x_565) * vec4<f32>(x_576.x, x_576.y, x_576.z, x_576.w));
  let x_583 : vec4<f32> = u_xlat1;
  let x_587 : f32 = x_19.x_GradientScale;
  let x_589 : vec2<f32> = (-(vec2<f32>(x_583.z, x_583.w)) * vec2<f32>(x_587, x_587));
  let x_590 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_589.x, x_590.y, x_589.y);
  let x_592 : vec3<f32> = u_xlat7;
  let x_596 : f32 = x_19.x_TextureWidth;
  let x_599 : f32 = x_19.x_TextureHeight;
  let x_601 : vec2<f32> = (vec2<f32>(x_592.x, x_592.z) / vec2<f32>(x_596, x_599));
  let x_602 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_601.x, x_602.y, x_601.y);
  let x_604 : vec3<f32> = u_xlat7;
  let x_606 : vec2<f32> = in_TEXCOORD0;
  let x_607 : vec2<f32> = (vec2<f32>(x_604.x, x_604.z) + x_606);
  let x_608 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_607.x, x_607.y, x_608.z, x_608.w);
  let x_611 : f32 = u_xlat1.x;
  let x_612 : f32 = u_xlat14;
  u_xlat7.x = ((x_611 * x_612) + 1.0f);
  let x_616 : f32 = u_xlat14;
  let x_618 : f32 = u_xlat7.x;
  u_xlat7.x = (x_616 / x_618);
  let x_622 : f32 = u_xlat7.x;
  let x_624 : f32 = u_xlat1.y;
  u_xlat14 = (x_622 * x_624);
  let x_627 : f32 = u_xlat0.x;
  let x_629 : f32 = u_xlat7.x;
  u_xlat0.x = ((x_627 * x_629) + -0.5f);
  let x_636 : f32 = u_xlat7.x;
  vs_TEXCOORD4.x = x_636;
  let x_638 : f32 = u_xlat14;
  let x_642 : f32 = u_xlat0.x;
  vs_TEXCOORD4.y = ((-(x_638) * 0.5f) + x_642);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(4) in_TEXCOORD1_param : vec2<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD3, vs_TEXCOORD4);
}

