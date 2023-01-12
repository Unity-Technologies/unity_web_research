struct VGlobals {
  x_SinTime : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  x_Displacement : f32,
  x_DisplacementScale : f32,
  x_DisplacementSpeed : f32,
  x_DisplacementIndex : i32,
  unity_MetaVertexControl : vec4<u32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_21 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

@group(0) @binding(6) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(8) var sampler_DisplacementNoise : sampler;

@group(0) @binding(7) var x_DisplacementRamp : texture_2d<f32>;

@group(0) @binding(9) var sampler_DisplacementRamp : sampler;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlati1 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatb9 : bool;
  var x_180 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var x_215 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_25 : f32 = x_21.x_DisplacementScale;
  let x_27 : f32 = x_21.x_DisplacementScale;
  let x_29 : f32 = x_21.x_DisplacementScale;
  let x_30 : vec3<f32> = vec3<f32>(x_25, x_27, x_29);
  let x_35 : vec3<f32> = (vec3<f32>(x_13.x, x_13.y, x_13.z) * vec3<f32>(x_30.x, x_30.y, x_30.z));
  let x_36 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_35.x, x_35.y, x_35.z, x_36.w);
  let x_38 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = in_COLOR0;
  let x_43 : vec3<f32> = (vec3<f32>(x_38.x, x_38.y, x_38.z) * vec3<f32>(x_41.z, x_41.z, x_41.z));
  let x_44 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_43.x, x_43.y, x_43.z, x_44.w);
  let x_50 : f32 = x_21.x_SinTime.y;
  let x_53 : f32 = x_21.x_DisplacementSpeed;
  u_xlat1.y = (x_50 * x_53);
  u_xlat1.x = 0.0f;
  u_xlat1.z = 0.0f;
  let x_62 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = in_COLOR0;
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_64.y, x_64.y, x_64.y)) + vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = textureSampleLevel(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_82.x, x_82.y, x_82.z), 0.0f);
  u_xlat0 = x_84;
  let x_90 : i32 = x_21.x_DisplacementIndex;
  u_xlati1 = x_90;
  let x_91 : vec4<f32> = u_xlat0;
  let x_100 : i32 = u_xlati1;
  indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
  let x_105 : vec4<u32> = indexable[x_100];
  u_xlat0.x = dot(x_91, bitcast<vec4<f32>>(x_105));
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec4<f32> = textureSampleLevel(x_DisplacementRamp, sampler_DisplacementRamp, vec2<f32>(x_118.x, x_118.x), 0.0f);
  u_xlat0.x = x_120.x;
  let x_124 : f32 = u_xlat0.x;
  let x_127 : f32 = x_21.x_Displacement;
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
  let x_152 : f32 = u_xlat0.z;
  u_xlatb9 = (0.0f < x_152);
  let x_154 : bool = u_xlatb9;
  u_xlat1.z = select(0.0f, 0.0001f, x_154);
  let x_159 : vec4<f32> = in_TEXCOORD1;
  let x_164 : vec4<f32> = x_21.unity_LightmapST;
  let x_168 : vec4<f32> = x_21.unity_LightmapST;
  let x_170 : vec2<f32> = ((vec2<f32>(x_159.x, x_159.y) * vec2<f32>(x_164.x, x_164.y)) + vec2<f32>(x_168.z, x_168.w));
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_170.x, x_170.y, x_171.z, x_171.w);
  let x_177 : u32 = x_21.unity_MetaVertexControl.x;
  if ((x_177 != 0u)) {
    let x_183 : vec4<f32> = u_xlat1;
    x_180 = vec3<f32>(x_183.x, x_183.y, x_183.z);
  } else {
    let x_186 : vec4<f32> = u_xlat0;
    x_180 = vec3<f32>(x_186.x, x_186.y, x_186.z);
  }
  let x_188 : vec3<f32> = x_180;
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_192 : f32 = u_xlat1.z;
  u_xlatb9 = (0.0f < x_192);
  let x_195 : bool = u_xlatb9;
  u_xlat2.z = select(0.0f, 0.0001f, x_195);
  let x_199 : vec4<f32> = in_TEXCOORD2;
  let x_203 : vec4<f32> = x_21.unity_DynamicLightmapST;
  let x_207 : vec4<f32> = x_21.unity_DynamicLightmapST;
  let x_209 : vec2<f32> = ((vec2<f32>(x_199.x, x_199.y) * vec2<f32>(x_203.x, x_203.y)) + vec2<f32>(x_207.z, x_207.w));
  let x_210 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_209.x, x_209.y, x_210.z, x_210.w);
  let x_213 : u32 = x_21.unity_MetaVertexControl.y;
  if ((x_213 != 0u)) {
    let x_218 : vec4<f32> = u_xlat2;
    x_215 = vec3<f32>(x_218.x, x_218.y, x_218.z);
  } else {
    let x_221 : vec4<f32> = u_xlat1;
    x_215 = vec3<f32>(x_221.x, x_221.y, x_221.z);
  }
  let x_223 : vec3<f32> = x_215;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat1;
  let x_231 : vec4<f32> = x_21.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_226.y, x_226.y, x_226.y, x_226.y) * x_231);
  let x_234 : vec4<f32> = x_21.unity_MatrixVP[0i];
  let x_235 : vec4<f32> = u_xlat1;
  let x_238 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_234 * vec4<f32>(x_235.x, x_235.x, x_235.x, x_235.x)) + x_238);
  let x_241 : vec4<f32> = x_21.unity_MatrixVP[2i];
  let x_242 : vec4<f32> = u_xlat1;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_241 * vec4<f32>(x_242.z, x_242.z, x_242.z, x_242.z)) + x_245);
  let x_251 : vec4<f32> = u_xlat1;
  let x_253 : vec4<f32> = x_21.unity_MatrixVP[3i];
  gl_Position = (x_251 + x_253);
  let x_257 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_262 : vec3<f32> = (vec3<f32>(x_257.y, x_257.y, x_257.y) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_268 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat1;
  let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.x, x_268.x, x_268.x)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_274.z, x_273.z);
  let x_277 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_279 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = u_xlat0;
  let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279.z, x_279.z, x_279.z)) + vec3<f32>(x_282.x, x_282.y, x_282.w));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_290 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_292 : vec4<f32> = in_POSITION0;
  let x_295 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = ((vec3<f32>(x_290.x, x_290.y, x_290.z) * vec3<f32>(x_292.w, x_292.w, x_292.w)) + vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_299 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_299;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TEXCOORD1_param : vec4<f32>, @location(3) in_TEXCOORD2_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TEXCOORD2 = in_TEXCOORD2_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_COLOR0);
}

