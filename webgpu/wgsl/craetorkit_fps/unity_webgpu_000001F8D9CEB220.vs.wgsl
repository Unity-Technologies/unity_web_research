struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_51 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_53.w, x_53.w, x_53.w)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_86 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_87 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat0;
  gl_Position = ((x_86 * vec4<f32>(x_87.w, x_87.w, x_87.w, x_87.w)) + x_90);
  let x_96 : vec3<f32> = in_NORMAL0;
  let x_99 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_96, vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_105 : vec3<f32> = in_NORMAL0;
  let x_107 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_105, vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_113 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_111, vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_119 : vec4<f32> = u_xlat0;
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_119.x, x_119.y, x_119.z), vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_124 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_124);
  let x_126 : f32 = u_xlat9;
  let x_128 : vec4<f32> = u_xlat0;
  let x_130 : vec3<f32> = (vec3<f32>(x_126, x_126, x_126) * vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_134 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_134.x, x_134.y, x_134.z);
  let x_138 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_138;
  let x_144 : vec2<f32> = in_TEXCOORD0;
  let x_147 : vec4<f32> = x_17.x_MainTex_ST;
  let x_151 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_144 * vec2<f32>(x_147.x, x_147.y)) + vec2<f32>(x_151.z, x_151.w));
  let x_155 : f32 = u_xlat1.y;
  let x_159 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat9 = (x_155 * x_159);
  let x_162 : f32 = x_17.unity_MatrixV[0i].z;
  let x_164 : f32 = u_xlat1.x;
  let x_166 : f32 = u_xlat9;
  u_xlat9 = ((x_162 * x_164) + x_166);
  let x_169 : f32 = x_17.unity_MatrixV[2i].z;
  let x_171 : f32 = u_xlat1.z;
  let x_173 : f32 = u_xlat9;
  u_xlat9 = ((x_169 * x_171) + x_173);
  let x_176 : f32 = x_17.unity_MatrixV[3i].z;
  let x_179 : f32 = u_xlat1.w;
  let x_181 : f32 = u_xlat9;
  u_xlat9 = ((x_176 * x_179) + x_181);
  let x_185 : f32 = u_xlat9;
  vs_TEXCOORD3.z = -(x_185);
  let x_190 : vec4<f32> = u_xlat1;
  let x_193 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_195 : vec3<f32> = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_193.x, x_193.y, x_193.w));
  let x_196 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_201 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.w) * vec3<f32>(x_201.x, x_201.x, x_201.x)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_210 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_212 : vec4<f32> = u_xlat1;
  let x_215 : vec4<f32> = u_xlat2;
  let x_217 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.y, x_210.w) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_221 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_223 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.y, x_221.w) * vec3<f32>(x_223.w, x_223.w, x_223.w)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat1;
  let x_235 : vec2<f32> = (vec2<f32>(x_231.x, x_231.z) * vec2<f32>(0.5f, 0.5f));
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_235.x, x_236.y, x_235.y, x_236.w);
  let x_239 : f32 = u_xlat1.y;
  let x_241 : f32 = x_17.x_ProjectionParams.x;
  u_xlat9 = (x_239 * x_241);
  let x_244 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_244;
  let x_246 : f32 = u_xlat9;
  u_xlat2.w = (x_246 * 0.5f);
  let x_249 : vec4<f32> = u_xlat2;
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec2<f32> = (vec2<f32>(x_249.z, x_249.z) + vec2<f32>(x_251.x, x_251.w));
  let x_254 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_253.x, x_253.y, x_254.z, x_254.w);
  let x_257 : f32 = u_xlat0.y;
  let x_259 : f32 = u_xlat0.y;
  u_xlat9 = (x_257 * x_259);
  let x_262 : f32 = u_xlat0.x;
  let x_264 : f32 = u_xlat0.x;
  let x_266 : f32 = u_xlat9;
  u_xlat9 = ((x_262 * x_264) + -(x_266));
  let x_269 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_269.y, x_269.z, x_269.z, x_269.x) * vec4<f32>(x_271.x, x_271.y, x_271.z, x_271.z));
  let x_275 : vec4<f32> = x_17.unity_SHBr;
  let x_276 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_275, x_276);
  let x_280 : vec4<f32> = x_17.unity_SHBg;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_280, x_281);
  let x_285 : vec4<f32> = x_17.unity_SHBb;
  let x_286 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_285, x_286);
  let x_292 : vec4<f32> = x_17.unity_SHC;
  let x_294 : f32 = u_xlat9;
  let x_297 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294, x_294, x_294)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
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
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

