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

var<private> vs_TEXCOORD5 : f32;

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
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat0;
  gl_Position = x_92;
  let x_100 : f32 = u_xlat0.z;
  vs_TEXCOORD5 = x_100;
  let x_103 : vec3<f32> = in_NORMAL0;
  let x_106 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_103, vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_111 : vec3<f32> = in_NORMAL0;
  let x_113 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_111, vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_117 : vec3<f32> = in_NORMAL0;
  let x_119 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_117, vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_124 : vec4<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_124.x, x_124.y, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_129 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_129);
  let x_131 : f32 = u_xlat9;
  let x_133 : vec4<f32> = u_xlat0;
  let x_135 : vec3<f32> = (vec3<f32>(x_131, x_131, x_131) * vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = vec3<f32>(x_139.x, x_139.y, x_139.z);
  let x_143 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_143;
  let x_149 : vec2<f32> = in_TEXCOORD0;
  let x_152 : vec4<f32> = x_17.x_MainTex_ST;
  let x_156 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_149 * vec2<f32>(x_152.x, x_152.y)) + vec2<f32>(x_156.z, x_156.w));
  let x_160 : f32 = u_xlat1.y;
  let x_164 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat9 = (x_160 * x_164);
  let x_167 : f32 = x_17.unity_MatrixV[0i].z;
  let x_169 : f32 = u_xlat1.x;
  let x_171 : f32 = u_xlat9;
  u_xlat9 = ((x_167 * x_169) + x_171);
  let x_174 : f32 = x_17.unity_MatrixV[2i].z;
  let x_176 : f32 = u_xlat1.z;
  let x_178 : f32 = u_xlat9;
  u_xlat9 = ((x_174 * x_176) + x_178);
  let x_181 : f32 = x_17.unity_MatrixV[3i].z;
  let x_184 : f32 = u_xlat1.w;
  let x_186 : f32 = u_xlat9;
  u_xlat9 = ((x_181 * x_184) + x_186);
  let x_190 : f32 = u_xlat9;
  vs_TEXCOORD3.z = -(x_190);
  let x_195 : vec4<f32> = u_xlat1;
  let x_198 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_200 : vec3<f32> = (vec3<f32>(x_195.y, x_195.y, x_195.y) * vec3<f32>(x_198.x, x_198.y, x_198.w));
  let x_201 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_204 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_206 : vec4<f32> = u_xlat1;
  let x_209 : vec4<f32> = u_xlat2;
  let x_211 : vec3<f32> = ((vec3<f32>(x_204.x, x_204.y, x_204.w) * vec3<f32>(x_206.x, x_206.x, x_206.x)) + vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_215 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_217 : vec4<f32> = u_xlat1;
  let x_220 : vec4<f32> = u_xlat2;
  let x_222 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.y, x_215.w) * vec3<f32>(x_217.z, x_217.z, x_217.z)) + vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_228 : vec4<f32> = u_xlat1;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = ((vec3<f32>(x_226.x, x_226.y, x_226.w) * vec3<f32>(x_228.w, x_228.w, x_228.w)) + vec3<f32>(x_231.x, x_231.y, x_231.z));
  let x_234 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat1;
  let x_240 : vec2<f32> = (vec2<f32>(x_236.x, x_236.z) * vec2<f32>(0.5f, 0.5f));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_241.y, x_240.y, x_241.w);
  let x_244 : f32 = u_xlat1.y;
  let x_246 : f32 = x_17.x_ProjectionParams.x;
  u_xlat9 = (x_244 * x_246);
  let x_249 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_249;
  let x_251 : f32 = u_xlat9;
  u_xlat2.w = (x_251 * 0.5f);
  let x_254 : vec4<f32> = u_xlat2;
  let x_256 : vec4<f32> = u_xlat2;
  let x_258 : vec2<f32> = (vec2<f32>(x_254.z, x_254.z) + vec2<f32>(x_256.x, x_256.w));
  let x_259 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_258.x, x_258.y, x_259.z, x_259.w);
  let x_262 : f32 = u_xlat0.y;
  let x_264 : f32 = u_xlat0.y;
  u_xlat9 = (x_262 * x_264);
  let x_267 : f32 = u_xlat0.x;
  let x_269 : f32 = u_xlat0.x;
  let x_271 : f32 = u_xlat9;
  u_xlat9 = ((x_267 * x_269) + -(x_271));
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec4<f32>(x_274.y, x_274.z, x_274.z, x_274.x) * vec4<f32>(x_276.x, x_276.y, x_276.z, x_276.z));
  let x_280 : vec4<f32> = x_17.unity_SHBr;
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat0.x = dot(x_280, x_281);
  let x_285 : vec4<f32> = x_17.unity_SHBg;
  let x_286 : vec4<f32> = u_xlat1;
  u_xlat0.y = dot(x_285, x_286);
  let x_290 : vec4<f32> = x_17.unity_SHBb;
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat0.z = dot(x_290, x_291);
  let x_297 : vec4<f32> = x_17.unity_SHC;
  let x_299 : f32 = u_xlat9;
  let x_302 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299, x_299, x_299)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD4);
}

