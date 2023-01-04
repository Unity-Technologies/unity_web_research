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

@group(0) @binding(11) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati4 : i32;

var<private> u_xlati0 : i32;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> u_xlatb12 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat4 : f32;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

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
  let x_64 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_66 : vec4<f32> = in_POSITION0;
  let x_69 : vec4<f32> = u_xlat1;
  let x_71 : vec3<f32> = ((vec3<f32>(x_64.x, x_64.y, x_64.z) * vec3<f32>(x_66.w, x_66.w, x_66.w)) + vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_71.z, x_72.w);
  let x_75 : vec4<f32> = u_xlat2;
  let x_79 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_75.y, x_75.y, x_75.y, x_75.y) * x_79);
  let x_82 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_83 : vec4<f32> = u_xlat2;
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_82 * vec4<f32>(x_83.x, x_83.x, x_83.x, x_83.x)) + x_86);
  let x_89 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_90 : vec4<f32> = u_xlat2;
  let x_93 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_89 * vec4<f32>(x_90.z, x_90.z, x_90.z, x_90.z)) + x_93);
  let x_102 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_103 : vec4<f32> = u_xlat2;
  let x_106 : vec4<f32> = u_xlat3;
  gl_Position = ((x_102 * vec4<f32>(x_103.w, x_103.w, x_103.w, x_103.w)) + x_106);
  let x_116 : f32 = in_TEXCOORD1.x;
  u_xlat12 = (x_116 * 0.000244140625f);
  let x_119 : f32 = u_xlat12;
  u_xlat3.x = floor(x_119);
  let x_123 : f32 = u_xlat3.x;
  let x_128 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_123) * 4096.0f) + x_128);
  let x_131 : vec4<f32> = u_xlat3;
  let x_135 : vec2<f32> = (vec2<f32>(x_131.x, x_131.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_135.x, x_135.y, x_136.z, x_136.w);
  let x_139 : vec4<f32> = u_xlat3;
  let x_143 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_147 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_149 : vec2<f32> = ((vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_143.x, x_143.y)) + vec2<f32>(x_147.z, x_147.w));
  let x_150 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_150.x, x_150.y, x_149.x, x_149.y);
  let x_154 : vec4<f32> = u_xlat3;
  let x_158 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_162 : vec4<f32> = x_19.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_158.x, x_158.y)) + vec2<f32>(x_162.z, x_162.w));
  let x_166 : vec4<f32> = in_TEXCOORD0;
  let x_170 : vec4<f32> = x_19.x_MainTex_ST;
  let x_174 : vec4<f32> = x_19.x_MainTex_ST;
  let x_176 : vec2<f32> = ((vec2<f32>(x_166.x, x_166.y) * vec2<f32>(x_170.x, x_170.y)) + vec2<f32>(x_174.z, x_174.w));
  let x_177 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_180 : f32 = u_xlat2.y;
  let x_183 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat12 = (x_180 * x_183);
  let x_186 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_188 : f32 = u_xlat2.x;
  let x_190 : f32 = u_xlat12;
  u_xlat12 = ((x_186 * x_188) + x_190);
  let x_193 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_196 : f32 = u_xlat2.z;
  let x_198 : f32 = u_xlat12;
  u_xlat12 = ((x_193 * x_196) + x_198);
  let x_201 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_203 : f32 = u_xlat2.w;
  let x_205 : f32 = u_xlat12;
  u_xlat12 = ((x_201 * x_203) + x_205);
  let x_208 : vec4<f32> = x_19.x_ScreenParams;
  let x_212 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_214 : vec2<f32> = (vec2<f32>(x_208.y, x_208.y) * vec2<f32>(x_212.x, x_212.y));
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_214.x, x_214.y, x_215.z, x_215.w);
  let x_218 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_221 : vec4<f32> = x_19.x_ScreenParams;
  let x_224 : vec4<f32> = u_xlat2;
  let x_226 : vec2<f32> = ((vec2<f32>(x_218.x, x_218.y) * vec2<f32>(x_221.x, x_221.x)) + vec2<f32>(x_224.x, x_224.y));
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat2;
  let x_233 : f32 = x_19.x_ScaleX;
  let x_236 : f32 = x_19.x_ScaleY;
  let x_238 : vec2<f32> = (vec2<f32>(x_229.x, x_229.y) * vec2<f32>(x_233, x_236));
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_238.x, x_238.y, x_239.z, x_239.w);
  let x_241 : f32 = u_xlat12;
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec2<f32> = (vec2<f32>(x_241, x_241) / vec2<f32>(x_243.x, x_243.y));
  let x_246 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_246.w);
  let x_248 : vec4<f32> = u_xlat2;
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec2<f32>(x_248.x, x_248.y), vec2<f32>(x_250.x, x_250.y));
  let x_253 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_253);
  let x_257 : f32 = in_TEXCOORD1.y;
  let x_261 : f32 = x_19.x_GradientScale;
  u_xlat13 = (abs(x_257) * x_261);
  let x_263 : f32 = u_xlat12;
  let x_264 : f32 = u_xlat13;
  u_xlat12 = (x_263 * x_264);
  let x_266 : f32 = u_xlat12;
  u_xlat13 = (x_266 * 1.5f);
  let x_271 : f32 = x_19.x_PerspectiveFilter;
  u_xlat2.x = (-(x_271) + 1.0f);
  let x_276 : f32 = u_xlat13;
  let x_278 : f32 = u_xlat2.x;
  u_xlat13 = (x_276 * x_278);
  let x_280 : f32 = u_xlat12;
  let x_282 : f32 = u_xlat13;
  u_xlat12 = ((x_280 * 1.5f) + -(x_282));
  let x_287 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_290 : vec4<f32> = x_19.unity_WorldToObject[1i];
  let x_292 : vec3<f32> = (vec3<f32>(x_287.y, x_287.y, x_287.y) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_296 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_299 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_302 : vec4<f32> = u_xlat2;
  let x_304 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_299.x, x_299.x, x_299.x)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_308 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_311 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_314 : vec4<f32> = u_xlat2;
  let x_316 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_311.z, x_311.z, x_311.z)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat2;
  let x_322 : vec4<f32> = x_19.unity_WorldToObject[3i];
  let x_324 : vec3<f32> = (vec3<f32>(x_319.x, x_319.y, x_319.z) + vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_328 : f32 = in_POSITION0.z;
  u_xlat0.z = x_328;
  let x_330 : vec3<f32> = u_xlat0;
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat0 = (-(x_330) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_337 : vec3<f32> = in_NORMAL0;
  let x_338 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_337, x_338);
  let x_345 : f32 = u_xlat0.x;
  u_xlati4 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_345)));
  let x_353 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_353 < 0.0f)));
  let x_357 : i32 = u_xlati4;
  let x_359 : i32 = u_xlati0;
  u_xlati0 = (-(x_357) + x_359);
  let x_361 : i32 = u_xlati0;
  u_xlat0.x = f32(x_361);
  let x_364 : vec3<f32> = u_xlat0;
  let x_366 : vec3<f32> = in_NORMAL0;
  u_xlat0 = (vec3<f32>(x_364.x, x_364.x, x_364.x) * x_366);
  let x_368 : vec3<f32> = u_xlat0;
  let x_370 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_368, vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_374 : vec3<f32> = u_xlat0;
  let x_376 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_374, vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_380 : vec3<f32> = u_xlat0;
  let x_382 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_380, vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_386 : vec4<f32> = u_xlat2;
  let x_388 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_393 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_393);
  let x_396 : vec3<f32> = u_xlat0;
  let x_398 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_396.x, x_396.x, x_396.x) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat1;
  let x_405 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_406 : vec3<f32> = (-(vec3<f32>(x_401.x, x_401.y, x_401.z)) + x_405);
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_411 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_411.x, x_411.y, x_411.z);
  let x_413 : vec4<f32> = u_xlat2;
  let x_415 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_413.x, x_413.y, x_413.z), vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_420 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_420);
  let x_423 : vec4<f32> = u_xlat1;
  let x_425 : vec4<f32> = u_xlat2;
  let x_427 : vec3<f32> = (vec3<f32>(x_423.x, x_423.x, x_423.x) * vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_430 : vec3<f32> = u_xlat0;
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_430.y, x_430.z, x_430.x), vec3<f32>(x_432.x, x_432.y, x_432.z));
  let x_438 : f32 = u_xlat1.x;
  let x_440 : f32 = u_xlat12;
  let x_442 : f32 = u_xlat13;
  vs_TEXCOORD6.y = ((abs(x_438) * x_440) + x_442);
  let x_449 : f32 = in_TEXCOORD1.y;
  u_xlatb12 = (0.0f >= x_449);
  let x_451 : bool = u_xlatb12;
  u_xlat12 = select(0.0f, 1.0f, x_451);
  let x_455 : f32 = x_19.x_WeightNormal;
  let x_459 : f32 = x_19.x_WeightBold;
  u_xlat1.x = (-(x_455) + x_459);
  let x_462 : f32 = u_xlat12;
  let x_464 : f32 = u_xlat1.x;
  let x_467 : f32 = x_19.x_WeightNormal;
  u_xlat12 = ((x_462 * x_464) + x_467);
  let x_469 : f32 = u_xlat12;
  let x_474 : f32 = x_19.x_FaceDilate;
  u_xlat12 = ((x_469 * 0.25f) + x_474);
  let x_476 : f32 = u_xlat12;
  let x_479 : f32 = x_19.x_ScaleRatioA;
  u_xlat12 = (x_476 * x_479);
  let x_481 : f32 = u_xlat12;
  vs_TEXCOORD6.x = (x_481 * 0.5f);
  let x_487 : f32 = u_xlat0.y;
  vs_TEXCOORD2.z = x_487;
  let x_490 : vec4<f32> = in_TANGENT0;
  let x_493 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_495 : vec3<f32> = (vec3<f32>(x_490.y, x_490.y, x_490.y) * vec3<f32>(x_493.y, x_493.z, x_493.x));
  let x_496 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
  let x_499 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_501 : vec4<f32> = in_TANGENT0;
  let x_504 : vec4<f32> = u_xlat1;
  let x_506 : vec3<f32> = ((vec3<f32>(x_499.y, x_499.z, x_499.x) * vec3<f32>(x_501.x, x_501.x, x_501.x)) + vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_506.x, x_506.y, x_506.z, x_507.w);
  let x_510 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_512 : vec4<f32> = in_TANGENT0;
  let x_515 : vec4<f32> = u_xlat1;
  let x_517 : vec3<f32> = ((vec3<f32>(x_510.y, x_510.z, x_510.x) * vec3<f32>(x_512.z, x_512.z, x_512.z)) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec4<f32> = u_xlat1;
  let x_522 : vec4<f32> = u_xlat1;
  u_xlat12 = dot(vec3<f32>(x_520.x, x_520.y, x_520.z), vec3<f32>(x_522.x, x_522.y, x_522.z));
  let x_525 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_525);
  let x_527 : f32 = u_xlat12;
  let x_529 : vec4<f32> = u_xlat1;
  let x_531 : vec3<f32> = (vec3<f32>(x_527, x_527, x_527) * vec3<f32>(x_529.x, x_529.y, x_529.z));
  let x_532 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec3<f32> = u_xlat0;
  let x_535 : vec4<f32> = u_xlat1;
  let x_537 : vec3<f32> = (x_534 * vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : vec3<f32> = u_xlat0;
  let x_542 : vec4<f32> = u_xlat1;
  let x_545 : vec4<f32> = u_xlat3;
  let x_548 : vec3<f32> = ((vec3<f32>(x_540.z, x_540.x, x_540.y) * vec3<f32>(x_542.y, x_542.z, x_542.x)) + -(vec3<f32>(x_545.x, x_545.y, x_545.z)));
  let x_549 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_553 : f32 = in_TANGENT0.w;
  let x_556 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat4 = (x_553 * x_556);
  let x_558 : f32 = u_xlat4;
  let x_560 : vec4<f32> = u_xlat3;
  let x_562 : vec3<f32> = (vec3<f32>(x_558, x_558, x_558) * vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_566 : f32 = u_xlat3.x;
  vs_TEXCOORD2.y = x_566;
  let x_569 : f32 = u_xlat1.z;
  vs_TEXCOORD2.x = x_569;
  let x_573 : f32 = u_xlat0.z;
  vs_TEXCOORD3.z = x_573;
  let x_577 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = x_577;
  let x_580 : f32 = u_xlat1.x;
  vs_TEXCOORD3.x = x_580;
  let x_583 : f32 = u_xlat1.y;
  vs_TEXCOORD4.x = x_583;
  let x_586 : f32 = u_xlat3.y;
  vs_TEXCOORD3.y = x_586;
  let x_589 : f32 = u_xlat3.z;
  vs_TEXCOORD4.y = x_589;
  let x_593 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_593;
  let x_594 : vec4<f32> = u_xlat2;
  let x_598 : vec4<f32> = x_19.x_EnvMatrix[1i];
  u_xlat0 = (vec3<f32>(x_594.y, x_594.y, x_594.y) * vec3<f32>(x_598.x, x_598.y, x_598.z));
  let x_602 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_604 : vec4<f32> = u_xlat2;
  let x_607 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_602.x, x_602.y, x_602.z) * vec3<f32>(x_604.x, x_604.x, x_604.x)) + x_607);
  let x_611 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_613 : vec4<f32> = u_xlat2;
  let x_616 : vec3<f32> = u_xlat0;
  vs_TEXCOORD7 = ((vec3<f32>(x_611.x, x_611.y, x_611.z) * vec3<f32>(x_613.z, x_613.z, x_613.z)) + x_616);
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

