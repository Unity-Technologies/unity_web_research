struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat1;
  let x_65 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_68 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_68 * vec4<f32>(x_69.w, x_69.w, x_69.w, x_69.w)) + x_72);
  let x_80 : vec4<f32> = u_xlat1;
  gl_Position = x_80;
  let x_84 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_85 : vec4<f32> = in_POSITION0;
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat2 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_94 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_96 : vec4<f32> = in_POSITION0;
  let x_99 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.w, x_96.w, x_96.w)) + vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_103 : vec4<f32> = u_xlat2;
  let x_107 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_109 : vec2<f32> = (vec2<f32>(x_103.y, x_103.y) * vec2<f32>(x_107.x, x_107.y));
  let x_110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_109.x, x_109.y, x_110.z, x_110.w);
  let x_113 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_115 : vec4<f32> = u_xlat2;
  let x_118 : vec4<f32> = u_xlat0;
  let x_120 : vec2<f32> = ((vec2<f32>(x_113.x, x_113.y) * vec2<f32>(x_115.x, x_115.x)) + vec2<f32>(x_118.x, x_118.y));
  let x_121 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_120.x, x_120.y, x_121.z, x_121.w);
  let x_124 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_126 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat0;
  let x_131 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.z, x_126.z)) + vec2<f32>(x_129.x, x_129.y));
  let x_132 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_131.x, x_131.y, x_132.z, x_132.w);
  let x_137 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_139 : vec4<f32> = u_xlat2;
  let x_142 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec2<f32>(x_137.x, x_137.y) * vec2<f32>(x_139.w, x_139.w)) + vec2<f32>(x_142.x, x_142.y));
  let x_148 : vec4<f32> = in_TEXCOORD0;
  let x_152 : vec4<f32> = x_17.x_MainTex_ST;
  let x_156 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_148.x, x_148.y) * vec2<f32>(x_152.x, x_152.y)) + vec2<f32>(x_156.z, x_156.w));
  let x_164 : f32 = u_xlat1.z;
  vs_TEXCOORD7 = x_164;
  let x_167 : vec3<f32> = in_NORMAL0;
  let x_169 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_167, vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_173 : vec3<f32> = in_NORMAL0;
  let x_175 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_173, vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_179 : vec3<f32> = in_NORMAL0;
  let x_181 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_179, vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_187.x, x_187.y, x_187.z), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_192);
  let x_194 : f32 = u_xlat12;
  let x_196 : vec4<f32> = u_xlat0;
  let x_198 : vec3<f32> = (vec3<f32>(x_194, x_194, x_194) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec4<f32> = in_TANGENT0;
  let x_205 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_207 : vec3<f32> = (vec3<f32>(x_202.y, x_202.y, x_202.y) * vec3<f32>(x_205.y, x_205.z, x_205.x));
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_213 : vec4<f32> = in_TANGENT0;
  let x_216 : vec4<f32> = u_xlat2;
  let x_218 : vec3<f32> = ((vec3<f32>(x_211.y, x_211.z, x_211.x) * vec3<f32>(x_213.x, x_213.x, x_213.x)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_222 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_224 : vec4<f32> = in_TANGENT0;
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec3<f32> = ((vec3<f32>(x_222.y, x_222.z, x_222.x) * vec3<f32>(x_224.z, x_224.z, x_224.z)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat2;
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_232.x, x_232.y, x_232.z), vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_237);
  let x_239 : f32 = u_xlat12;
  let x_241 : vec4<f32> = u_xlat2;
  let x_243 : vec3<f32> = (vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_248 : vec4<f32> = u_xlat0;
  let x_250 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = u_xlat2;
  let x_258 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_253.z, x_253.x, x_253.y) * vec3<f32>(x_255.y, x_255.z, x_255.x)) + -(x_258));
  let x_264 : f32 = in_TANGENT0.w;
  let x_267 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat12 = (x_264 * x_267);
  let x_269 : f32 = u_xlat12;
  let x_271 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_269, x_269, x_269) * x_271);
  let x_275 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_275;
  let x_278 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_278;
  let x_281 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_281;
  let x_285 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_285;
  let x_289 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_289;
  let x_292 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_292;
  let x_295 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_295;
  let x_298 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_298;
  let x_301 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_301;
  let x_304 : f32 = u_xlat1.y;
  let x_306 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_304 * x_306);
  let x_310 : f32 = u_xlat0.x;
  u_xlat0.w = (x_310 * 0.5f);
  let x_314 : vec4<f32> = u_xlat1;
  let x_317 : vec2<f32> = (vec2<f32>(x_314.x, x_314.w) * vec2<f32>(0.5f, 0.5f));
  let x_318 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_317.x, x_318.y, x_317.y, x_318.w);
  let x_321 : vec4<f32> = u_xlat1;
  let x_322 : vec2<f32> = vec2<f32>(x_321.z, x_321.w);
  let x_323 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_323.x, x_323.y, x_322.x, x_322.y);
  let x_325 : vec4<f32> = u_xlat0;
  let x_327 : vec4<f32> = u_xlat0;
  let x_329 : vec2<f32> = (vec2<f32>(x_325.z, x_325.z) + vec2<f32>(x_327.x, x_327.w));
  let x_330 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_329.x, x_329.y, x_330.z, x_330.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD7_1 : f32,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(6)
  vs_TEXCOORD6_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD7, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6);
}

