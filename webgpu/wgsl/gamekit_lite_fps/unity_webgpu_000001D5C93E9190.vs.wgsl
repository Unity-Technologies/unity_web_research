struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ScreenParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  glstate_matrix_projection : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_FaceDilate : f32,
  @size(12)
  padding_1 : u32,
  x_EnvMatrix : mat4x4<f32>,
  x_WeightNormal : f32,
  x_WeightBold : f32,
  x_ScaleRatioA : f32,
  x_VertexOffsetX : f32,
  x_VertexOffsetY : f32,
  x_GradientScale : f32,
  x_ScaleX : f32,
  x_ScaleY : f32,
  x_PerspectiveFilter : f32,
  @size(12)
  padding_2 : u32,
  x_MainTex_ST : vec4<f32>,
  x_FaceTex_ST : vec4<f32>,
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(15) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati5 : i32;

var<private> u_xlati0 : i32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> u_xlatb15 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  let x_29 : vec2<f32> = (vec2<f32>(x_14.x, x_14.y) + vec2<f32>(x_24, x_27));
  let x_30 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_29.x, x_29.y, x_30.z);
  let x_34 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_34.y, x_34.y, x_34.y, x_34.y) * x_40);
  let x_44 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_45 : vec3<f32> = u_xlat0;
  let x_48 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_44 * vec4<f32>(x_45.x, x_45.x, x_45.x, x_45.x)) + x_48);
  let x_51 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_51 * vec4<f32>(x_52.z, x_52.z, x_52.z, x_52.z)) + x_55);
  let x_58 : vec4<f32> = u_xlat1;
  let x_61 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat2 = (x_58 + x_61);
  let x_64 : vec4<f32> = u_xlat2;
  let x_68 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_64.y, x_64.y, x_64.y, x_64.y) * x_68);
  let x_71 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_72 : vec4<f32> = u_xlat2;
  let x_75 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_71 * vec4<f32>(x_72.x, x_72.x, x_72.x, x_72.x)) + x_75);
  let x_78 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_79 : vec4<f32> = u_xlat2;
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_78 * vec4<f32>(x_79.z, x_79.z, x_79.z, x_79.z)) + x_82);
  let x_91 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_92 : vec4<f32> = u_xlat2;
  let x_95 : vec4<f32> = u_xlat3;
  gl_Position = ((x_91 * vec4<f32>(x_92.w, x_92.w, x_92.w, x_92.w)) + x_95);
  let x_105 : f32 = in_TEXCOORD1.x;
  u_xlat15 = (x_105 * 0.000244140625f);
  let x_108 : f32 = u_xlat15;
  u_xlat3.x = floor(x_108);
  let x_112 : f32 = u_xlat3.x;
  let x_117 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_112) * 4096.0f) + x_117);
  let x_120 : vec4<f32> = u_xlat3;
  let x_124 : vec2<f32> = (vec2<f32>(x_120.x, x_120.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_125 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_124.x, x_124.y, x_125.z, x_125.w);
  let x_128 : vec4<f32> = u_xlat3;
  let x_132 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_136 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_138 : vec2<f32> = ((vec2<f32>(x_128.x, x_128.y) * vec2<f32>(x_132.x, x_132.y)) + vec2<f32>(x_136.z, x_136.w));
  let x_139 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_139.x, x_139.y, x_138.x, x_138.y);
  let x_143 : vec4<f32> = u_xlat3;
  let x_147 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_151 : vec4<f32> = x_19.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_143.x, x_143.y) * vec2<f32>(x_147.x, x_147.y)) + vec2<f32>(x_151.z, x_151.w));
  let x_155 : vec4<f32> = in_TEXCOORD0;
  let x_159 : vec4<f32> = x_19.x_MainTex_ST;
  let x_163 : vec4<f32> = x_19.x_MainTex_ST;
  let x_165 : vec2<f32> = ((vec2<f32>(x_155.x, x_155.y) * vec2<f32>(x_159.x, x_159.y)) + vec2<f32>(x_163.z, x_163.w));
  let x_166 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_165.x, x_165.y, x_166.z, x_166.w);
  let x_169 : f32 = u_xlat2.y;
  let x_172 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat15 = (x_169 * x_172);
  let x_175 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_177 : f32 = u_xlat2.x;
  let x_179 : f32 = u_xlat15;
  u_xlat15 = ((x_175 * x_177) + x_179);
  let x_182 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_185 : f32 = u_xlat2.z;
  let x_187 : f32 = u_xlat15;
  u_xlat15 = ((x_182 * x_185) + x_187);
  let x_190 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_192 : f32 = u_xlat2.w;
  let x_194 : f32 = u_xlat15;
  u_xlat15 = ((x_190 * x_192) + x_194);
  let x_197 : vec4<f32> = x_19.x_ScreenParams;
  let x_201 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_203 : vec2<f32> = (vec2<f32>(x_197.y, x_197.y) * vec2<f32>(x_201.x, x_201.y));
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_203.x, x_203.y, x_204.z, x_204.w);
  let x_207 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_210 : vec4<f32> = x_19.x_ScreenParams;
  let x_213 : vec4<f32> = u_xlat2;
  let x_215 : vec2<f32> = ((vec2<f32>(x_207.x, x_207.y) * vec2<f32>(x_210.x, x_210.x)) + vec2<f32>(x_213.x, x_213.y));
  let x_216 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_215.x, x_215.y, x_216.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat2;
  let x_222 : f32 = x_19.x_ScaleX;
  let x_225 : f32 = x_19.x_ScaleY;
  let x_227 : vec2<f32> = (vec2<f32>(x_218.x, x_218.y) * vec2<f32>(x_222, x_225));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_228.z, x_228.w);
  let x_230 : f32 = u_xlat15;
  let x_232 : vec4<f32> = u_xlat2;
  let x_234 : vec2<f32> = (vec2<f32>(x_230, x_230) / vec2<f32>(x_232.x, x_232.y));
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_235.z, x_235.w);
  let x_237 : vec4<f32> = u_xlat2;
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_237.x, x_237.y), vec2<f32>(x_239.x, x_239.y));
  let x_242 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_242);
  let x_245 : f32 = in_TEXCOORD1.y;
  let x_249 : f32 = x_19.x_GradientScale;
  u_xlat2.x = (abs(x_245) * x_249);
  let x_252 : f32 = u_xlat15;
  let x_254 : f32 = u_xlat2.x;
  u_xlat15 = (x_252 * x_254);
  let x_256 : f32 = u_xlat15;
  u_xlat2.x = (x_256 * 1.5f);
  let x_263 : f32 = x_19.x_PerspectiveFilter;
  u_xlat7.x = (-(x_263) + 1.0f);
  let x_269 : f32 = u_xlat7.x;
  let x_271 : f32 = u_xlat2.x;
  u_xlat2.x = (x_269 * x_271);
  let x_274 : f32 = u_xlat15;
  let x_277 : f32 = u_xlat2.x;
  u_xlat15 = ((x_274 * 1.5f) + -(x_277));
  let x_282 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_285 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat7 = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_292 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_295 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_292.x, x_292.x, x_292.x)) + x_295);
  let x_298 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_301 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_304 : vec3<f32> = u_xlat7;
  u_xlat7 = ((vec3<f32>(x_298.x, x_298.y, x_298.z) * vec3<f32>(x_301.z, x_301.z, x_301.z)) + x_304);
  let x_306 : vec3<f32> = u_xlat7;
  let x_308 : vec4<f32> = x_19.unity_WorldToObject[3i];
  u_xlat7 = (x_306 + vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_312 : f32 = in_POSITION0.z;
  u_xlat0.z = x_312;
  let x_314 : vec3<f32> = u_xlat0;
  let x_316 : vec3<f32> = u_xlat7;
  u_xlat0 = (-(x_314) + x_316);
  let x_320 : vec3<f32> = in_NORMAL0;
  let x_321 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_320, x_321);
  let x_328 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_328)));
  let x_336 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_336 < 0.0f)));
  let x_340 : i32 = u_xlati5;
  let x_342 : i32 = u_xlati0;
  u_xlati0 = (-(x_340) + x_342);
  let x_344 : i32 = u_xlati0;
  u_xlat0.x = f32(x_344);
  let x_347 : vec3<f32> = u_xlat0;
  let x_349 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec3<f32>(x_347.x, x_347.x, x_347.x) * x_349);
  let x_351 : vec3<f32> = u_xlat0;
  let x_353 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.y = dot(x_351, vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_357 : vec3<f32> = u_xlat0;
  let x_359 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.z = dot(x_357, vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_363 : vec3<f32> = u_xlat0;
  let x_365 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.x = dot(x_363, vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_369 : vec4<f32> = u_xlat3;
  let x_371 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_369.x, x_369.y, x_369.z), vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_376 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_376);
  let x_379 : vec3<f32> = u_xlat0;
  let x_381 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_379.x, x_379.x, x_379.x) * vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_385 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_387 : vec4<f32> = in_POSITION0;
  let x_390 : vec4<f32> = u_xlat1;
  u_xlat7 = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387.w, x_387.w, x_387.w)) + vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_394 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_395 : vec4<f32> = in_POSITION0;
  let x_398 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_394 * vec4<f32>(x_395.w, x_395.w, x_395.w, x_395.w)) + x_398);
  let x_400 : vec3<f32> = u_xlat7;
  let x_403 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_404 : vec3<f32> = (-(x_400) + x_403);
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_409 : vec3<f32> = u_xlat7;
  vs_TEXCOORD5 = x_409;
  let x_410 : vec4<f32> = u_xlat3;
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat7.x = dot(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_417 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_417);
  let x_420 : vec3<f32> = u_xlat7;
  let x_422 : vec4<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_420.x, x_420.x, x_420.x) * vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec3<f32> = u_xlat0;
  let x_427 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(vec3<f32>(x_425.y, x_425.z, x_425.x), x_427);
  let x_432 : f32 = u_xlat7.x;
  let x_434 : f32 = u_xlat15;
  let x_437 : f32 = u_xlat2.x;
  vs_TEXCOORD6.y = ((abs(x_432) * x_434) + x_437);
  let x_444 : f32 = in_TEXCOORD1.y;
  u_xlatb15 = (0.0f >= x_444);
  let x_446 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_446);
  let x_450 : f32 = x_19.x_WeightNormal;
  let x_454 : f32 = x_19.x_WeightBold;
  u_xlat2.x = (-(x_450) + x_454);
  let x_457 : f32 = u_xlat15;
  let x_459 : f32 = u_xlat2.x;
  let x_462 : f32 = x_19.x_WeightNormal;
  u_xlat15 = ((x_457 * x_459) + x_462);
  let x_464 : f32 = u_xlat15;
  let x_469 : f32 = x_19.x_FaceDilate;
  u_xlat15 = ((x_464 * 0.25f) + x_469);
  let x_471 : f32 = u_xlat15;
  let x_474 : f32 = x_19.x_ScaleRatioA;
  u_xlat15 = (x_471 * x_474);
  let x_476 : f32 = u_xlat15;
  vs_TEXCOORD6.x = (x_476 * 0.5f);
  let x_482 : f32 = u_xlat0.y;
  vs_TEXCOORD2.z = x_482;
  let x_485 : vec4<f32> = in_TANGENT0;
  let x_488 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_490 : vec3<f32> = (vec3<f32>(x_485.y, x_485.y, x_485.y) * vec3<f32>(x_488.y, x_488.z, x_488.x));
  let x_491 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_494 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_496 : vec4<f32> = in_TANGENT0;
  let x_499 : vec4<f32> = u_xlat2;
  let x_501 : vec3<f32> = ((vec3<f32>(x_494.y, x_494.z, x_494.x) * vec3<f32>(x_496.x, x_496.x, x_496.x)) + vec3<f32>(x_499.x, x_499.y, x_499.z));
  let x_502 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_505 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_507 : vec4<f32> = in_TANGENT0;
  let x_510 : vec4<f32> = u_xlat2;
  let x_512 : vec3<f32> = ((vec3<f32>(x_505.y, x_505.z, x_505.x) * vec3<f32>(x_507.z, x_507.z, x_507.z)) + vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat2;
  let x_517 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_520 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_520);
  let x_522 : f32 = u_xlat15;
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : vec3<f32> = (vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_524.x, x_524.y, x_524.z));
  let x_527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_530 : vec3<f32> = u_xlat0;
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat4 = (x_530 * vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_534 : vec3<f32> = u_xlat0;
  let x_536 : vec4<f32> = u_xlat2;
  let x_539 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_534.z, x_534.x, x_534.y) * vec3<f32>(x_536.y, x_536.z, x_536.x)) + -(x_539));
  let x_544 : f32 = in_TANGENT0.w;
  let x_547 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat5 = (x_544 * x_547);
  let x_549 : f32 = u_xlat5;
  let x_551 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_549, x_549, x_549) * x_551);
  let x_554 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_554;
  let x_557 : f32 = u_xlat2.z;
  vs_TEXCOORD2.x = x_557;
  let x_561 : f32 = u_xlat0.z;
  vs_TEXCOORD3.z = x_561;
  let x_565 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = x_565;
  let x_568 : f32 = u_xlat2.x;
  vs_TEXCOORD3.x = x_568;
  let x_571 : f32 = u_xlat2.y;
  vs_TEXCOORD4.x = x_571;
  let x_574 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_574;
  let x_577 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_577;
  let x_581 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_581;
  let x_582 : vec4<f32> = u_xlat3;
  let x_586 : vec4<f32> = x_19.x_EnvMatrix[1i];
  u_xlat0 = (vec3<f32>(x_582.y, x_582.y, x_582.y) * vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_590 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_592 : vec4<f32> = u_xlat3;
  let x_595 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_590.x, x_590.y, x_590.z) * vec3<f32>(x_592.x, x_592.x, x_592.x)) + x_595);
  let x_599 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_601 : vec4<f32> = u_xlat3;
  let x_604 : vec3<f32> = u_xlat0;
  vs_TEXCOORD7 = ((vec3<f32>(x_599.x, x_599.y, x_599.z) * vec3<f32>(x_601.z, x_601.z, x_601.z)) + x_604);
  let x_606 : vec4<f32> = u_xlat1;
  let x_610 : vec4<f32> = x_19.unity_WorldToLight[1i];
  u_xlat0 = (vec3<f32>(x_606.y, x_606.y, x_606.y) * vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_614 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_616 : vec4<f32> = u_xlat1;
  let x_619 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_616.x, x_616.x, x_616.x)) + x_619);
  let x_622 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_624 : vec4<f32> = u_xlat1;
  let x_627 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_622.x, x_622.y, x_622.z) * vec3<f32>(x_624.z, x_624.z, x_624.z)) + x_627);
  let x_631 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_633 : vec4<f32> = u_xlat1;
  let x_636 : vec3<f32> = u_xlat0;
  vs_TEXCOORD8 = ((vec3<f32>(x_631.x, x_631.y, x_631.z) * vec3<f32>(x_633.w, x_633.w, x_633.w)) + x_636);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(6)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD6_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(7)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(5) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_COLOR0);
}

