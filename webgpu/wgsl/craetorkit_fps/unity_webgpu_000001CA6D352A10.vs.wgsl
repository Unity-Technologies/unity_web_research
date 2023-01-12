struct VGlobals {
  x_SinTime : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(4) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(16) var sampler_DisplacementNoise : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
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
  let x_162 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_164 : vec4<f32> = in_POSITION0;
  let x_167 : vec4<f32> = u_xlat0;
  let x_169 : vec3<f32> = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.w, x_164.w, x_164.w)) + vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_173.y, x_173.y, x_173.y, x_173.y) * x_177);
  let x_180 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_181 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_180 * vec4<f32>(x_181.x, x_181.x, x_181.x, x_181.x)) + x_184);
  let x_187 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_188 : vec4<f32> = u_xlat1;
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_187 * vec4<f32>(x_188.z, x_188.z, x_188.z, x_188.z)) + x_191);
  let x_198 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_199 : vec4<f32> = u_xlat1;
  let x_202 : vec4<f32> = u_xlat2;
  gl_Position = ((x_198 * vec4<f32>(x_199.w, x_199.w, x_199.w, x_199.w)) + x_202);
  let x_210 : vec4<f32> = in_TEXCOORD0;
  let x_214 : vec4<f32> = x_19.x_MainTex_ST;
  let x_218 : vec4<f32> = x_19.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_214.x, x_214.y)) + vec2<f32>(x_218.z, x_218.w));
  let x_223 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_223;
  let x_227 : vec3<f32> = in_NORMAL0;
  let x_229 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_227, vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_233 : vec3<f32> = in_NORMAL0;
  let x_235 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_233, vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec3<f32> = in_NORMAL0;
  let x_241 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_239, vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_245 : vec4<f32> = u_xlat1;
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(x_247.x, x_247.y, x_247.z));
  let x_252 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_252);
  let x_255 : vec4<f32> = u_xlat0;
  let x_257 : vec4<f32> = u_xlat1;
  let x_259 : vec3<f32> = (vec3<f32>(x_255.x, x_255.x, x_255.x) * vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_263 : vec4<f32> = in_TANGENT0;
  let x_266 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  let x_268 : vec3<f32> = (vec3<f32>(x_263.y, x_263.y, x_263.y) * vec3<f32>(x_266.y, x_266.z, x_266.x));
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_274 : vec4<f32> = in_TANGENT0;
  let x_277 : vec4<f32> = u_xlat2;
  let x_279 : vec3<f32> = ((vec3<f32>(x_272.y, x_272.z, x_272.x) * vec3<f32>(x_274.x, x_274.x, x_274.x)) + vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_283 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_285 : vec4<f32> = in_TANGENT0;
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec3<f32> = ((vec3<f32>(x_283.y, x_283.z, x_283.x) * vec3<f32>(x_285.z, x_285.z, x_285.z)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_300 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_300);
  let x_303 : vec4<f32> = u_xlat0;
  let x_305 : vec4<f32> = u_xlat2;
  let x_307 : vec3<f32> = (vec3<f32>(x_303.x, x_303.x, x_303.x) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_312 : vec4<f32> = u_xlat1;
  let x_314 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat1;
  let x_319 : vec4<f32> = u_xlat2;
  let x_322 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_317.z, x_317.x, x_317.y) * vec3<f32>(x_319.y, x_319.z, x_319.x)) + -(x_322));
  let x_326 : f32 = in_TANGENT0.w;
  let x_328 : f32 = x_19.unity_WorldTransformParams.w;
  u_xlat0.x = (x_326 * x_328);
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_331.x, x_331.x, x_331.x) * x_333);
  let x_336 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_336;
  let x_339 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_339;
  let x_342 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_342;
  let x_346 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_346;
  let x_350 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_350;
  let x_353 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_353;
  let x_356 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_356;
  let x_359 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_359;
  let x_362 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_362;
  let x_365 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_365;
  let x_368 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_368;
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

