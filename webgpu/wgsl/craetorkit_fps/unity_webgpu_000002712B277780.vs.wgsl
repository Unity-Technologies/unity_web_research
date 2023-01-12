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

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlat3 : vec3<f32>;
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
  let x_98 : vec3<f32> = in_NORMAL0;
  let x_101 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_98, vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_107 : vec3<f32> = in_NORMAL0;
  let x_109 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_107, vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_113 : vec3<f32> = in_NORMAL0;
  let x_115 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_113, vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_121 : vec4<f32> = u_xlat2;
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat14 = dot(vec3<f32>(x_121.x, x_121.y, x_121.z), vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_126);
  let x_128 : f32 = u_xlat14;
  let x_130 : vec4<f32> = u_xlat2;
  let x_132 : vec3<f32> = (vec3<f32>(x_128, x_128, x_128) * vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_136 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = vec3<f32>(x_136.x, x_136.y, x_136.z);
  let x_140 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_140;
  let x_146 : vec2<f32> = in_TEXCOORD0;
  let x_149 : vec4<f32> = x_17.x_MainTex_ST;
  let x_153 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_146 * vec2<f32>(x_149.x, x_149.y)) + vec2<f32>(x_153.z, x_153.w));
  let x_159 : f32 = u_xlat0.z;
  vs_TEXCOORD5 = x_159;
  let x_161 : vec4<f32> = u_xlat0;
  let x_162 : vec2<f32> = vec2<f32>(x_161.z, x_161.w);
  let x_163 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_163.x, x_163.y, x_162.x, x_162.y);
  let x_167 : f32 = u_xlat1.y;
  let x_171 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat8 = (x_167 * x_171);
  let x_174 : f32 = x_17.unity_MatrixV[0i].z;
  let x_176 : f32 = u_xlat1.x;
  let x_178 : f32 = u_xlat8;
  u_xlat8 = ((x_174 * x_176) + x_178);
  let x_181 : f32 = x_17.unity_MatrixV[2i].z;
  let x_183 : f32 = u_xlat1.z;
  let x_185 : f32 = u_xlat8;
  u_xlat8 = ((x_181 * x_183) + x_185);
  let x_188 : f32 = x_17.unity_MatrixV[3i].z;
  let x_191 : f32 = u_xlat1.w;
  let x_193 : f32 = u_xlat8;
  u_xlat8 = ((x_188 * x_191) + x_193);
  let x_197 : f32 = u_xlat8;
  vs_TEXCOORD3.z = -(x_197);
  let x_203 : vec4<f32> = u_xlat1;
  let x_206 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat3 = (vec3<f32>(x_203.y, x_203.y, x_203.y) * vec3<f32>(x_206.x, x_206.y, x_206.w));
  let x_210 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_212 : vec4<f32> = u_xlat1;
  let x_215 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_210.x, x_210.y, x_210.w) * vec3<f32>(x_212.x, x_212.x, x_212.x)) + x_215);
  let x_218 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_220 : vec4<f32> = u_xlat1;
  let x_223 : vec3<f32> = u_xlat3;
  let x_224 : vec3<f32> = ((vec3<f32>(x_218.x, x_218.y, x_218.w) * vec3<f32>(x_220.z, x_220.z, x_220.z)) + x_223);
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_228 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_230 : vec4<f32> = u_xlat1;
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.y, x_228.w) * vec3<f32>(x_230.w, x_230.w, x_230.w)) + vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : f32 = u_xlat1.z;
  vs_TEXCOORD3.w = x_239;
  u_xlat3.x = 0.5f;
  u_xlat3.z = 0.5f;
  let x_245 : f32 = x_17.x_ProjectionParams.x;
  u_xlat3.y = x_245;
  let x_247 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = u_xlat3;
  let x_250 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) * x_249);
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat0;
  let x_255 : vec3<f32> = u_xlat3;
  let x_256 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.w) * x_255);
  let x_257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_260 : f32 = u_xlat1.y;
  u_xlat1.w = (x_260 * 0.5f);
  let x_263 : vec4<f32> = u_xlat1;
  let x_265 : vec4<f32> = u_xlat1;
  let x_267 : vec2<f32> = (vec2<f32>(x_263.z, x_263.z) + vec2<f32>(x_265.x, x_265.w));
  let x_268 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_267.x, x_267.y, x_268.z, x_268.w);
  let x_271 : f32 = u_xlat2.y;
  let x_273 : f32 = u_xlat2.y;
  u_xlat1.x = (x_271 * x_273);
  let x_277 : f32 = u_xlat2.x;
  let x_279 : f32 = u_xlat2.x;
  let x_282 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_277 * x_279) + -(x_282));
  let x_286 : vec4<f32> = u_xlat2;
  let x_288 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_286.y, x_286.z, x_286.z, x_286.x) * vec4<f32>(x_288.x, x_288.y, x_288.z, x_288.z));
  let x_292 : vec4<f32> = x_17.unity_SHBr;
  let x_293 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_292, x_293);
  let x_297 : vec4<f32> = x_17.unity_SHBg;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_297, x_298);
  let x_302 : vec4<f32> = x_17.unity_SHBb;
  let x_303 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_302, x_303);
  let x_309 : vec4<f32> = x_17.unity_SHC;
  let x_311 : vec4<f32> = u_xlat1;
  let x_314 : vec3<f32> = u_xlat3;
  vs_TEXCOORD4 = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.x, x_311.x)) + x_314);
  let x_317 : f32 = u_xlat0.y;
  u_xlat0.w = (x_317 * 0.5f);
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec4<f32> = u_xlat0;
  let x_324 : vec2<f32> = (vec2<f32>(x_320.z, x_320.z) + vec2<f32>(x_322.x, x_322.w));
  let x_325 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_324.x, x_324.y, x_325.z, x_325.w);
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
  vs_TEXCOORD5_1 : f32,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
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
  return main_out(vs_TEXCOORD1, gl_Position, vs_TEXCOORD0, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD6, vs_TEXCOORD4);
}

