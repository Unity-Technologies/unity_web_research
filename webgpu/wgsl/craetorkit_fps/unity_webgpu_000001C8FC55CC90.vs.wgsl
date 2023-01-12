struct VGlobals {
  x_SinTime : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(12) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(14) var sampler_DisplacementNoise : sampler;

@group(0) @binding(13) var x_DisplacementRamp : texture_2d<f32>;

@group(0) @binding(15) var sampler_DisplacementRamp : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat2 : vec4<f32>;
  var u_xlat11 : f32;
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
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = textureSampleLevel(x_DisplacementRamp, sampler_DisplacementRamp, vec2<f32>(x_118.x, x_118.x), 0.0f);
  u_xlat0.x = x_120.x;
  let x_124 : f32 = u_xlat0.x;
  let x_127 : f32 = x_19.x_Displacement;
  u_xlat0.x = (x_124 * x_127);
  let x_131 : f32 = u_xlat0.x;
  let x_134 : f32 = in_COLOR0.x;
  u_xlat0.x = (x_131 * x_134);
  let x_139 : vec3<f32> = in_NORMAL0;
  let x_140 : vec4<f32> = u_xlat0;
  let x_143 : vec4<f32> = in_POSITION0;
  let x_145 : vec3<f32> = ((x_139 * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_148 : vec4<f32> = u_xlat0;
  let x_154 : vec4<f32> = x_19.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_148.y, x_148.y, x_148.y, x_148.y) * x_154);
  let x_157 : vec4<f32> = x_19.unity_ObjectToWorld[0i];
  let x_158 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_157 * vec4<f32>(x_158.x, x_158.x, x_158.x, x_158.x)) + x_161);
  let x_164 : vec4<f32> = x_19.unity_ObjectToWorld[2i];
  let x_165 : vec4<f32> = u_xlat0;
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_164 * vec4<f32>(x_165.z, x_165.z, x_165.z, x_165.z)) + x_168);
  let x_170 : vec4<f32> = u_xlat0;
  let x_173 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  u_xlat1 = (x_170 + x_173);
  let x_176 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_176.y, x_176.y, x_176.y, x_176.y) * x_180);
  let x_183 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_184 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_183 * vec4<f32>(x_184.x, x_184.x, x_184.x, x_184.x)) + x_187);
  let x_190 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_191 : vec4<f32> = u_xlat1;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_190 * vec4<f32>(x_191.z, x_191.z, x_191.z, x_191.z)) + x_194);
  let x_197 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_198 : vec4<f32> = u_xlat1;
  let x_201 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_197 * vec4<f32>(x_198.w, x_198.w, x_198.w, x_198.w)) + x_201);
  let x_207 : vec4<f32> = u_xlat1;
  gl_Position = x_207;
  let x_210 : vec3<f32> = in_NORMAL0;
  let x_212 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_210, vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_216 : vec3<f32> = in_NORMAL0;
  let x_218 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_216, vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_222 : vec3<f32> = in_NORMAL0;
  let x_224 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_222, vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_229 : vec4<f32> = u_xlat2;
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat11 = dot(vec3<f32>(x_229.x, x_229.y, x_229.z), vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_234);
  let x_238 : f32 = u_xlat11;
  let x_240 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = (vec3<f32>(x_238, x_238, x_238) * vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_245 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_247 : vec4<f32> = in_POSITION0;
  let x_250 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.w, x_247.w, x_247.w)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_254 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_255 : vec4<f32> = in_POSITION0;
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_254 * vec4<f32>(x_255.w, x_255.w, x_255.w, x_255.w)) + x_258);
  let x_261 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_261;
  let x_262 : vec4<f32> = u_xlat0;
  let x_266 : vec4<f32> = x_19.unity_WorldToLight[1i];
  let x_268 : vec2<f32> = (vec2<f32>(x_262.y, x_262.y) * vec2<f32>(x_266.x, x_266.y));
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
  let x_272 : vec4<f32> = x_19.unity_WorldToLight[0i];
  let x_274 : vec4<f32> = u_xlat0;
  let x_277 : vec4<f32> = u_xlat2;
  let x_279 : vec2<f32> = ((vec2<f32>(x_272.x, x_272.y) * vec2<f32>(x_274.x, x_274.x)) + vec2<f32>(x_277.x, x_277.y));
  let x_280 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_279.x, x_279.y, x_280.z, x_280.w);
  let x_283 : vec4<f32> = x_19.unity_WorldToLight[2i];
  let x_285 : vec4<f32> = u_xlat0;
  let x_288 : vec4<f32> = u_xlat0;
  let x_290 : vec2<f32> = ((vec2<f32>(x_283.x, x_283.y) * vec2<f32>(x_285.z, x_285.z)) + vec2<f32>(x_288.x, x_288.y));
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_290.x, x_290.y, x_291.z, x_291.w);
  let x_296 : vec4<f32> = x_19.unity_WorldToLight[3i];
  let x_298 : vec4<f32> = u_xlat0;
  let x_301 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec2<f32>(x_296.x, x_296.y) * vec2<f32>(x_298.w, x_298.w)) + vec2<f32>(x_301.x, x_301.y));
  let x_305 : f32 = u_xlat1.y;
  let x_307 : f32 = x_19.x_ProjectionParams.x;
  u_xlat0.x = (x_305 * x_307);
  let x_311 : f32 = u_xlat0.x;
  u_xlat0.w = (x_311 * 0.5f);
  let x_316 : vec4<f32> = u_xlat1;
  let x_319 : vec2<f32> = (vec2<f32>(x_316.x, x_316.w) * vec2<f32>(0.5f, 0.5f));
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_319.x, x_320.y, x_319.y, x_320.w);
  let x_323 : vec4<f32> = u_xlat1;
  let x_324 : vec2<f32> = vec2<f32>(x_323.z, x_323.w);
  let x_325 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_325.x, x_325.y, x_324.x, x_324.y);
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : vec2<f32> = (vec2<f32>(x_327.z, x_327.z) + vec2<f32>(x_329.x, x_329.w));
  let x_332 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD3);
}

