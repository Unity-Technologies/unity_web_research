struct VGlobals {
  x_SinTime : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_19 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(10) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(12) var sampler_DisplacementNoise : sampler;

@group(0) @binding(11) var x_DisplacementRamp : texture_2d<f32>;

@group(0) @binding(13) var sampler_DisplacementRamp : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : f32;
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
  let x_178 : vec4<f32> = x_19.unity_ObjectToWorld[3i];
  let x_180 : vec4<f32> = in_POSITION0;
  let x_183 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_178.x, x_178.y, x_178.z) * vec3<f32>(x_180.w, x_180.w, x_180.w)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : vec4<f32> = u_xlat1;
  let x_190 : vec4<f32> = x_19.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_186.y, x_186.y, x_186.y, x_186.y) * x_190);
  let x_193 : vec4<f32> = x_19.unity_MatrixVP[0i];
  let x_194 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_193 * vec4<f32>(x_194.x, x_194.x, x_194.x, x_194.x)) + x_197);
  let x_200 : vec4<f32> = x_19.unity_MatrixVP[2i];
  let x_201 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_200 * vec4<f32>(x_201.z, x_201.z, x_201.z, x_201.z)) + x_204);
  let x_207 : vec4<f32> = x_19.unity_MatrixVP[3i];
  let x_208 : vec4<f32> = u_xlat1;
  let x_211 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_207 * vec4<f32>(x_208.w, x_208.w, x_208.w, x_208.w)) + x_211);
  let x_217 : vec4<f32> = u_xlat0;
  gl_Position = x_217;
  let x_220 : vec3<f32> = in_NORMAL0;
  let x_222 : vec4<f32> = x_19.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_220, vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_226 : vec3<f32> = in_NORMAL0;
  let x_228 : vec4<f32> = x_19.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_226, vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_232 : vec3<f32> = in_NORMAL0;
  let x_234 : vec4<f32> = x_19.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_232, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec4<f32> = u_xlat1;
  u_xlat7 = dot(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : f32 = u_xlat7;
  u_xlat7 = inverseSqrt(x_244);
  let x_247 : f32 = u_xlat7;
  let x_249 : vec4<f32> = u_xlat1;
  vs_TEXCOORD0 = (vec3<f32>(x_247, x_247, x_247) * vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_253 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_253;
  let x_255 : f32 = u_xlat0.y;
  let x_257 : f32 = x_19.x_ProjectionParams.x;
  u_xlat0.y = (x_255 * x_257);
  let x_260 : vec4<f32> = u_xlat0;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.w, x_260.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_265 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_264.x, x_265.y, x_264.y, x_264.z);
  let x_268 : vec4<f32> = u_xlat0;
  let x_269 : vec2<f32> = vec2<f32>(x_268.z, x_268.w);
  let x_270 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_270.x, x_270.y, x_269.x, x_269.y);
  let x_272 : vec4<f32> = u_xlat1;
  let x_274 : vec4<f32> = u_xlat1;
  let x_276 : vec2<f32> = (vec2<f32>(x_272.z, x_272.z) + vec2<f32>(x_274.x, x_274.w));
  let x_277 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
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
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD3);
}

