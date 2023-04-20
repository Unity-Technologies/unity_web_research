diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  x_ScreenParams : vec4<f32>,
  /* @offset(32) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(96) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(160) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(176) */
  glstate_matrix_projection : mat4x4<f32>,
  /* @offset(240) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(304) */
  unity_WorldToLight : mat4x4<f32>,
  /* @offset(368) */
  x_FaceDilate : f32,
  /* @offset(384) */
  x_EnvMatrix : mat4x4<f32>,
  /* @offset(448) */
  x_WeightNormal : f32,
  /* @offset(452) */
  x_WeightBold : f32,
  /* @offset(456) */
  x_ScaleRatioA : f32,
  /* @offset(460) */
  x_VertexOffsetX : f32,
  /* @offset(464) */
  x_VertexOffsetY : f32,
  /* @offset(468) */
  x_GradientScale : f32,
  /* @offset(472) */
  x_ScaleX : f32,
  /* @offset(476) */
  x_ScaleY : f32,
  /* @offset(480) */
  x_PerspectiveFilter : f32,
  /* @offset(484) */
  x_Sharpness : f32,
  /* @offset(496) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(512) */
  x_FaceTex_ST : vec4<f32>,
  /* @offset(528) */
  x_OutlineTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

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

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_19.x_VertexOffsetX;
  let x_27 : f32 = x_19.x_VertexOffsetY;
  let x_29 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) + vec2<f32>(x_24, x_27));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_30.z, x_30.w);
  let x_33 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_33.y, x_33.y, x_33.y, x_33.y) * x_39);
  let x_43 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_44 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_43 * vec4<f32>(x_44.x, x_44.x, x_44.x, x_44.x)) + x_47);
  let x_50 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_50 * vec4<f32>(x_51.z, x_51.z, x_51.z, x_51.z)) + x_54);
  let x_57 : vec4<f32> = u_xlat1;
  let x_60 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat2 = (x_57 + x_60);
  let x_63 : vec4<f32> = u_xlat2;
  let x_67 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat3 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat2;
  let x_81 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_90 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_91 : vec4<f32> = u_xlat2;
  let x_94 : vec4<f32> = u_xlat3;
  gl_Position = ((x_90 * vec4<f32>(x_91.w, x_91.w, x_91.w, x_91.w)) + x_94);
  let x_104 : f32 = in_TEXCOORD1.x;
  u_xlat15 = (x_104 * 0.000244140625f);
  let x_107 : f32 = u_xlat15;
  u_xlat3.x = floor(x_107);
  let x_111 : f32 = u_xlat3.x;
  let x_116 : f32 = in_TEXCOORD1.x;
  u_xlat3.y = ((-(x_111) * 4096.0f) + x_116);
  let x_119 : vec4<f32> = u_xlat3;
  let x_123 : vec2<f32> = (vec2<f32>(x_119.x, x_119.y) * vec2<f32>(0.001953125f, 0.001953125f));
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat3;
  let x_131 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_135 : vec4<f32> = x_19.x_FaceTex_ST;
  let x_137 : vec2<f32> = ((vec2<f32>(x_127.x, x_127.y) * vec2<f32>(x_131.x, x_131.y)) + vec2<f32>(x_135.z, x_135.w));
  let x_138 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_138.x, x_138.y, x_137.x, x_137.y);
  let x_142 : vec4<f32> = u_xlat3;
  let x_146 : vec4<f32> = x_19.x_OutlineTex_ST;
  let x_150 : vec4<f32> = x_19.x_OutlineTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_146.x, x_146.y)) + vec2<f32>(x_150.z, x_150.w));
  let x_154 : vec4<f32> = in_TEXCOORD0;
  let x_158 : vec4<f32> = x_19.x_MainTex_ST;
  let x_162 : vec4<f32> = x_19.x_MainTex_ST;
  let x_164 : vec2<f32> = ((vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_158.x, x_158.y)) + vec2<f32>(x_162.z, x_162.w));
  let x_165 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_164.x, x_164.y, x_165.z, x_165.w);
  let x_168 : f32 = u_xlat2.y;
  let x_171 : f32 = x_19.unity_MatrixVP[1i].w;
  u_xlat15 = (x_168 * x_171);
  let x_174 : f32 = x_19.unity_MatrixVP[0i].w;
  let x_176 : f32 = u_xlat2.x;
  let x_178 : f32 = u_xlat15;
  u_xlat15 = ((x_174 * x_176) + x_178);
  let x_181 : f32 = x_19.unity_MatrixVP[2i].w;
  let x_184 : f32 = u_xlat2.z;
  let x_186 : f32 = u_xlat15;
  u_xlat15 = ((x_181 * x_184) + x_186);
  let x_189 : f32 = x_19.unity_MatrixVP[3i].w;
  let x_191 : f32 = u_xlat2.w;
  let x_193 : f32 = u_xlat15;
  u_xlat15 = ((x_189 * x_191) + x_193);
  let x_196 : vec4<f32> = x_19.x_ScreenParams;
  let x_200 : vec4<f32> = x_19.glstate_matrix_projection[1i];
  let x_202 : vec2<f32> = (vec2<f32>(x_196.y, x_196.y) * vec2<f32>(x_200.x, x_200.y));
  let x_203 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_202.x, x_202.y, x_203.z, x_203.w);
  let x_206 : vec4<f32> = x_19.glstate_matrix_projection[0i];
  let x_209 : vec4<f32> = x_19.x_ScreenParams;
  let x_212 : vec4<f32> = u_xlat2;
  let x_214 : vec2<f32> = ((vec2<f32>(x_206.x, x_206.y) * vec2<f32>(x_209.x, x_209.x)) + vec2<f32>(x_212.x, x_212.y));
  let x_215 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_214.x, x_214.y, x_215.z, x_215.w);
  let x_217 : vec4<f32> = u_xlat2;
  let x_221 : f32 = x_19.x_ScaleX;
  let x_224 : f32 = x_19.x_ScaleY;
  let x_226 : vec2<f32> = (vec2<f32>(x_217.x, x_217.y) * vec2<f32>(x_221, x_224));
  let x_227 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_226.x, x_226.y, x_227.z, x_227.w);
  let x_229 : f32 = u_xlat15;
  let x_231 : vec4<f32> = u_xlat2;
  let x_233 : vec2<f32> = (vec2<f32>(x_229, x_229) / vec2<f32>(x_231.x, x_231.y));
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_233.x, x_233.y, x_234.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat2;
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec2<f32>(x_236.x, x_236.y), vec2<f32>(x_238.x, x_238.y));
  let x_241 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_241);
  let x_244 : f32 = in_TEXCOORD1.y;
  let x_248 : f32 = x_19.x_GradientScale;
  u_xlat2.x = (abs(x_244) * x_248);
  let x_254 : f32 = x_19.x_Sharpness;
  u_xlat7 = (x_254 + 1.0f);
  let x_257 : f32 = u_xlat7;
  let x_259 : f32 = u_xlat2.x;
  u_xlat2.x = (x_257 * x_259);
  let x_262 : f32 = u_xlat15;
  let x_264 : f32 = u_xlat2.x;
  u_xlat7 = (x_262 * x_264);
  let x_269 : f32 = x_19.x_PerspectiveFilter;
  u_xlat12 = (-(x_269) + 1.0f);
  let x_272 : f32 = u_xlat12;
  let x_273 : f32 = u_xlat7;
  u_xlat7 = (x_272 * x_273);
  let x_275 : f32 = u_xlat15;
  let x_277 : f32 = u_xlat2.x;
  let x_279 : f32 = u_xlat7;
  u_xlat15 = ((x_275 * x_277) + -(x_279));
  let x_284 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_287 : vec4<f32> = x_19.unity_WorldToObject[1i];
  let x_289 : vec3<f32> = (vec3<f32>(x_284.y, x_284.y, x_284.y) * vec3<f32>(x_287.x, x_287.y, x_287.z));
  let x_290 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_289.x, x_290.y, x_289.y, x_289.z);
  let x_293 : vec4<f32> = x_19.unity_WorldToObject[0i];
  let x_296 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * vec3<f32>(x_296.x, x_296.x, x_296.x)) + vec3<f32>(x_299.x, x_299.z, x_299.w));
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_301.x, x_302.y, x_301.y, x_301.z);
  let x_305 : vec4<f32> = x_19.unity_WorldToObject[2i];
  let x_308 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_311 : vec4<f32> = u_xlat2;
  let x_313 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_308.z, x_308.z, x_308.z)) + vec3<f32>(x_311.x, x_311.z, x_311.w));
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_313.x, x_314.y, x_313.y, x_313.z);
  let x_316 : vec4<f32> = u_xlat2;
  let x_319 : vec4<f32> = x_19.unity_WorldToObject[3i];
  let x_321 : vec3<f32> = (vec3<f32>(x_316.x, x_316.z, x_316.w) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_321.x, x_322.y, x_321.y, x_321.z);
  let x_325 : f32 = in_POSITION0.z;
  u_xlat0.z = x_325;
  let x_327 : vec4<f32> = u_xlat0;
  let x_330 : vec4<f32> = u_xlat2;
  let x_332 : vec3<f32> = (-(vec3<f32>(x_327.x, x_327.y, x_327.z)) + vec3<f32>(x_330.x, x_330.z, x_330.w));
  let x_333 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_337 : vec3<f32> = in_NORMAL0;
  let x_338 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_337, vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_346 : f32 = u_xlat0.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_346)));
  let x_354 : f32 = u_xlat0.x;
  u_xlati0 = bitcast<i32>(select(0u, 4294967295u, (x_354 < 0.0f)));
  let x_358 : i32 = u_xlati5;
  let x_360 : i32 = u_xlati0;
  u_xlati0 = (-(x_358) + x_360);
  let x_362 : i32 = u_xlati0;
  u_xlat0.x = f32(x_362);
  let x_365 : vec4<f32> = u_xlat0;
  let x_367 : vec3<f32> = in_NORMAL0;
  let x_368 : vec3<f32> = (vec3<f32>(x_365.x, x_365.x, x_365.x) * x_367);
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat3.y = dot(vec3<f32>(x_371.x, x_371.y, x_371.z), vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_378 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat3.z = dot(vec3<f32>(x_378.x, x_378.y, x_378.z), vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_385 : vec4<f32> = u_xlat0;
  let x_388 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat3.x = dot(vec3<f32>(x_385.x, x_385.y, x_385.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_392.x, x_392.y, x_392.z), vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_399 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_399);
  let x_402 : vec4<f32> = u_xlat0;
  let x_404 : vec4<f32> = u_xlat3;
  let x_406 : vec3<f32> = (vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_410 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_412 : vec4<f32> = in_POSITION0;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.w, x_412.w, x_412.w)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_417.x, x_418.y, x_417.y, x_417.z);
  let x_421 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_422 : vec4<f32> = in_POSITION0;
  let x_425 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_421 * vec4<f32>(x_422.w, x_422.w, x_422.w, x_422.w)) + x_425);
  let x_427 : vec4<f32> = u_xlat2;
  let x_431 : vec3<f32> = x_19.x_WorldSpaceCameraPos;
  let x_432 : vec3<f32> = (-(vec3<f32>(x_427.x, x_427.z, x_427.w)) + x_431);
  let x_433 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_437 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = vec3<f32>(x_437.x, x_437.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat3;
  let x_441 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_446 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_446);
  let x_449 : vec4<f32> = u_xlat2;
  let x_451 : vec4<f32> = u_xlat3;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.x, x_449.x) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_453.x, x_454.y, x_453.y, x_453.z);
  let x_456 : vec4<f32> = u_xlat0;
  let x_458 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_456.y, x_456.z, x_456.x), vec3<f32>(x_458.x, x_458.z, x_458.w));
  let x_464 : f32 = u_xlat2.x;
  let x_466 : f32 = u_xlat15;
  let x_468 : f32 = u_xlat7;
  vs_TEXCOORD6.y = ((abs(x_464) * x_466) + x_468);
  let x_475 : f32 = in_TEXCOORD1.y;
  u_xlatb15 = (0.0f >= x_475);
  let x_477 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_477);
  let x_481 : f32 = x_19.x_WeightNormal;
  let x_485 : f32 = x_19.x_WeightBold;
  u_xlat2.x = (-(x_481) + x_485);
  let x_488 : f32 = u_xlat15;
  let x_490 : f32 = u_xlat2.x;
  let x_493 : f32 = x_19.x_WeightNormal;
  u_xlat15 = ((x_488 * x_490) + x_493);
  let x_495 : f32 = u_xlat15;
  let x_500 : f32 = x_19.x_FaceDilate;
  u_xlat15 = ((x_495 * 0.25f) + x_500);
  let x_502 : f32 = u_xlat15;
  let x_505 : f32 = x_19.x_ScaleRatioA;
  u_xlat15 = (x_502 * x_505);
  let x_507 : f32 = u_xlat15;
  vs_TEXCOORD6.x = (x_507 * 0.5f);
  let x_513 : f32 = u_xlat0.y;
  vs_TEXCOORD2.z = x_513;
  let x_516 : vec4<f32> = in_TANGENT0;
  let x_519 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_521 : vec3<f32> = (vec3<f32>(x_516.y, x_516.y, x_516.y) * vec3<f32>(x_519.y, x_519.z, x_519.x));
  let x_522 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
  let x_525 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_527 : vec4<f32> = in_TANGENT0;
  let x_530 : vec4<f32> = u_xlat2;
  let x_532 : vec3<f32> = ((vec3<f32>(x_525.y, x_525.z, x_525.x) * vec3<f32>(x_527.x, x_527.x, x_527.x)) + vec3<f32>(x_530.x, x_530.y, x_530.z));
  let x_533 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_538 : vec4<f32> = in_TANGENT0;
  let x_541 : vec4<f32> = u_xlat2;
  let x_543 : vec3<f32> = ((vec3<f32>(x_536.y, x_536.z, x_536.x) * vec3<f32>(x_538.z, x_538.z, x_538.z)) + vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat2;
  let x_548 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : f32 = u_xlat15;
  u_xlat15 = inverseSqrt(x_551);
  let x_553 : f32 = u_xlat15;
  let x_555 : vec4<f32> = u_xlat2;
  let x_557 : vec3<f32> = (vec3<f32>(x_553, x_553, x_553) * vec3<f32>(x_555.x, x_555.y, x_555.z));
  let x_558 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_562 : vec4<f32> = u_xlat0;
  let x_564 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : vec4<f32> = u_xlat0;
  let x_569 : vec4<f32> = u_xlat2;
  let x_572 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_567.z, x_567.x, x_567.y) * vec3<f32>(x_569.y, x_569.z, x_569.x)) + -(x_572));
  let x_577 : f32 = in_TANGENT0.w;
  let x_580 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat5 = (x_577 * x_580);
  let x_582 : f32 = u_xlat5;
  let x_584 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_582, x_582, x_582) * x_584);
  let x_587 : f32 = u_xlat4.x;
  vs_TEXCOORD2.y = x_587;
  let x_590 : f32 = u_xlat2.z;
  vs_TEXCOORD2.x = x_590;
  let x_594 : f32 = u_xlat0.z;
  vs_TEXCOORD3.z = x_594;
  let x_598 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = x_598;
  let x_601 : f32 = u_xlat2.x;
  vs_TEXCOORD3.x = x_601;
  let x_604 : f32 = u_xlat2.y;
  vs_TEXCOORD4.x = x_604;
  let x_607 : f32 = u_xlat4.y;
  vs_TEXCOORD3.y = x_607;
  let x_610 : f32 = u_xlat4.z;
  vs_TEXCOORD4.y = x_610;
  let x_614 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_614;
  let x_615 : vec4<f32> = u_xlat3;
  let x_619 : vec4<f32> = x_19.x_EnvMatrix[1i];
  let x_621 : vec3<f32> = (vec3<f32>(x_615.y, x_615.y, x_615.y) * vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_625 : vec4<f32> = x_19.x_EnvMatrix[0i];
  let x_627 : vec4<f32> = u_xlat3;
  let x_630 : vec4<f32> = u_xlat0;
  let x_632 : vec3<f32> = ((vec3<f32>(x_625.x, x_625.y, x_625.z) * vec3<f32>(x_627.x, x_627.x, x_627.x)) + vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_637 : vec4<f32> = x_19.x_EnvMatrix[2i];
  let x_639 : vec4<f32> = u_xlat3;
  let x_642 : vec4<f32> = u_xlat0;
  vs_TEXCOORD7 = ((vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(x_639.z, x_639.z, x_639.z)) + vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat1;
  let x_649 : vec4<f32> = x_19.unity_WorldToLight[1i];
  u_xlat0 = (vec4<f32>(x_645.y, x_645.y, x_645.y, x_645.y) * x_649);
  let x_652 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_653 : vec4<f32> = u_xlat1;
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_652 * vec4<f32>(x_653.x, x_653.x, x_653.x, x_653.x)) + x_656);
  let x_659 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_660 : vec4<f32> = u_xlat1;
  let x_663 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_659 * vec4<f32>(x_660.z, x_660.z, x_660.z, x_660.z)) + x_663);
  let x_667 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_668 : vec4<f32> = u_xlat1;
  let x_671 : vec4<f32> = u_xlat0;
  vs_TEXCOORD8 = ((x_667 * vec4<f32>(x_668.w, x_668.w, x_668.w, x_668.w)) + x_671);
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


