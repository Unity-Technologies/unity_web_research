struct VGlobals {
  x_SinTime : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(12) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(13) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_23 : f32 = x_19.x_DisplacementScale;
  let x_25 : f32 = x_19.x_DisplacementScale;
  let x_27 : f32 = x_19.x_DisplacementScale;
  let x_28 : vec3<f32> = vec3<f32>(x_23, x_25, x_27);
  let x_33 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_28.x, x_28.y, x_28.z));
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_33.x, x_33.y, x_33.z, x_34.w);
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = in_COLOR0;
  let x_41 : vec3<f32> = (vec3<f32>(x_36.x, x_36.y, x_36.z) * vec3<f32>(x_39.z, x_39.z, x_39.z));
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_49 : f32 = x_19.x_SinTime.y;
  let x_52 : f32 = x_19.x_DisplacementSpeed;
  u_xlat1.y = (x_49 * x_52);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_61 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = in_COLOR0;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_63.y, x_63.y, x_63.y)) + vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_81.x, x_81.y, x_81.z), 0.0f);
  u_xlat0 = x_83;
  let x_89 : i32 = x_19.x_DisplacementIndex;
  u_xlati1 = x_89;
  let x_90 : vec4<f32> = u_xlat0;
  let x_100 : i32 = u_xlati1;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_105 : vec4<u32> = indexable[x_100];
  u_xlat0.x = dot(x_90, bitcast<vec4<f32>>(x_105));
  let x_110 : f32 = u_xlat0.x;
  let x_113 : f32 = x_19.x_Displacement;
  u_xlat0.x = (x_110 * x_113);
  let x_117 : f32 = u_xlat0.x;
  let x_120 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_117 * x_120);
  let x_125 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = u_xlat0;
  let x_129 : vec4<f32> = in_POSITION0;
  let x_131 : vec3<f32> = ((x_125 * vec3<f32>(x_126.x, x_126.x, x_126.x)) + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_134.y, x_134.y, x_134.y, x_134.y) * x_139);
  let x_142 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_142 * vec4<f32>(x_143.x, x_143.x, x_143.x, x_143.x)) + x_146);
  let x_150 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_150 * vec4<f32>(x_151.z, x_151.z, x_151.z, x_151.z)) + x_154);
  let x_156 : vec4<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat1 = (x_156 + x_159);
  let x_162 : vec4<f32> = u_xlat1;
  let x_166 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_162.y, x_162.y, x_162.y, x_162.y) * x_166);
  let x_169 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_170 : vec4<f32> = u_xlat1;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_169 * vec4<f32>(x_170.x, x_170.x, x_170.x, x_170.x)) + x_173);
  let x_176 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_177 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_176 * vec4<f32>(x_177.z, x_177.z, x_177.z, x_177.z)) + x_180);
  let x_183 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_184 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_183 * vec4<f32>(x_184.w, x_184.w, x_184.w, x_184.w)) + x_187);
  let x_193 : vec4<f32> = u_xlat1;
  gl_Position = x_193;
  let x_199 : f32 = u_xlat1.z;
  vs_TEXCOORD6 = x_199;
  let x_201 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_202 : vec4<f32> = in_POSITION0;
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat1 = ((x_201 * vec4<f32>(x_202.w, x_202.w, x_202.w, x_202.w)) + x_205);
  let x_210 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_212 : vec4<f32> = in_POSITION0;
  let x_215 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.w, x_212.w, x_212.w)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_219 : vec4<f32> = u_xlat1;
  let x_223 : vec4<f32> = x_19.unity_WorldToLight[1i];
  let x_225 : vec2<f32> = (vec2<f32>(x_219.y, x_219.y) * vec2<f32>(x_223.x, x_223.y));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_226.z, x_226.w);
  let x_229 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_231 : vec4<f32> = u_xlat1;
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : vec2<f32> = ((vec2<f32>(x_229.x, x_229.y) * vec2<f32>(x_231.x, x_231.x)) + vec2<f32>(x_234.x, x_234.y));
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_237.z, x_237.w);
  let x_240 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_242 : vec4<f32> = u_xlat1;
  let x_245 : vec4<f32> = u_xlat0;
  let x_247 : vec2<f32> = ((vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.z, x_242.z)) + vec2<f32>(x_245.x, x_245.y));
  let x_248 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_247.x, x_247.y, x_248.z, x_248.w);
  let x_253 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_255 : vec4<f32> = u_xlat1;
  let x_258 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec2<f32>(x_253.x, x_253.y) * vec2<f32>(x_255.w, x_255.w)) + vec2<f32>(x_258.x, x_258.y));
  let x_264 : vec4<f32> = in_TEXCOORD0;
  let x_268 : vec4<f32> = x_19.x_MainTex_ST;
  let x_272 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_264.x, x_264.y) * vec2<f32>(x_268.x, x_268.y)) + vec2<f32>(x_272.z, x_272.w));
  let x_275 : vec3<f32> = in_NORMAL0;
  let x_277 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_275, vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_281 : vec3<f32> = in_NORMAL0;
  let x_283 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_281, vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_287 : vec3<f32> = in_NORMAL0;
  let x_289 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_287, vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_294 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_299);
  let x_301 : f32 = u_xlat9;
  let x_303 : vec4<f32> = u_xlat0;
  let x_305 : vec3<f32> = (vec3<f32>(x_301, x_301, x_301) * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_306 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_305.x, x_305.y, x_305.z, x_306.w);
  let x_309 : vec4<f32> = in_TANGENT0;
  let x_312 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_314 : vec3<f32> = (vec3<f32>(x_309.y, x_309.y, x_309.y) * vec3<f32>(x_312.y, x_312.z, x_312.x));
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_320 : vec4<f32> = in_TANGENT0;
  let x_323 : vec4<f32> = u_xlat1;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.y, x_318.z, x_318.x) * vec3<f32>(x_320.x, x_320.x, x_320.x)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_329 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_331 : vec4<f32> = in_TANGENT0;
  let x_334 : vec4<f32> = u_xlat1;
  let x_336 : vec3<f32> = ((vec3<f32>(x_329.y, x_329.z, x_329.x) * vec3<f32>(x_331.z, x_331.z, x_331.z)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat1;
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_344);
  let x_346 : f32 = u_xlat9;
  let x_348 : vec4<f32> = u_xlat1;
  let x_350 : vec3<f32> = (vec3<f32>(x_346, x_346, x_346) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat0;
  let x_355 : vec4<f32> = u_xlat1;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat0;
  let x_362 : vec4<f32> = u_xlat1;
  let x_365 : vec4<f32> = u_xlat2;
  let x_368 : vec3<f32> = ((vec3<f32>(x_360.z, x_360.x, x_360.y) * vec3<f32>(x_362.y, x_362.z, x_362.x)) + -(vec3<f32>(x_365.x, x_365.y, x_365.z)));
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_373 : f32 = in_TANGENT0.w;
  let x_375 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat9 = (x_373 * x_375);
  let x_377 : f32 = u_xlat9;
  let x_379 : vec4<f32> = u_xlat2;
  let x_381 : vec3<f32> = (vec3<f32>(x_377, x_377, x_377) * vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_386 : f32 = u_xlat2.x;
  vs_TEXCOORD1.y = x_386;
  let x_389 : f32 = u_xlat1.z;
  vs_TEXCOORD1.x = x_389;
  let x_392 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_392;
  let x_396 : f32 = u_xlat1.x;
  vs_TEXCOORD2.x = x_396;
  let x_400 : f32 = u_xlat1.y;
  vs_TEXCOORD3.x = x_400;
  let x_403 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_403;
  let x_406 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_406;
  let x_409 : f32 = u_xlat2.y;
  vs_TEXCOORD2.y = x_409;
  let x_412 : f32 = u_xlat2.z;
  vs_TEXCOORD3.y = x_412;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD6_1 : f32,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD6, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

