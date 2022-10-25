struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixInvV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat6 : f32;
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
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_50);
  let x_53 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_54 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_53 * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + x_57);
  let x_60 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_61 : vec4<f32> = u_xlat0;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_74 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = u_xlat1;
  gl_Position = ((x_73 * vec4<f32>(x_74.w, x_74.w, x_74.w, x_74.w)) + x_77);
  let x_85 : vec4<f32> = in_TEXCOORD0;
  let x_89 : vec4<f32> = x_17.x_MainTex_ST;
  let x_93 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_85.x, x_85.y) * vec2<f32>(x_89.x, x_89.y)) + vec2<f32>(x_93.z, x_93.w));
  let x_99 : f32 = u_xlat0.y;
  let x_103 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat2 = (x_99 * x_103);
  let x_106 : f32 = x_17.unity_MatrixV[0i].z;
  let x_109 : f32 = u_xlat0.x;
  let x_111 : f32 = u_xlat2;
  u_xlat0.x = ((x_106 * x_109) + x_111);
  let x_115 : f32 = x_17.unity_MatrixV[2i].z;
  let x_117 : f32 = u_xlat0.z;
  let x_120 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_115 * x_117) + x_120);
  let x_124 : f32 = x_17.unity_MatrixV[3i].z;
  let x_127 : f32 = u_xlat0.w;
  let x_130 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_124 * x_127) + x_130);
  let x_134 : f32 = u_xlat0.x;
  let x_136 : f32 = x_17.x_ProjectionParams.w;
  u_xlat0.x = (x_134 * x_136);
  let x_141 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = -(x_141);
  let x_147 : vec4<f32> = x_17.unity_WorldToObject[1i];
  let x_151 : vec4<f32> = x_17.unity_MatrixInvV[0i];
  let x_153 : vec3<f32> = (vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_151.y, x_151.y, x_151.y));
  let x_154 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_157 : vec4<f32> = x_17.unity_WorldToObject[0i];
  let x_160 : vec4<f32> = x_17.unity_MatrixInvV[0i];
  let x_163 : vec4<f32> = u_xlat0;
  let x_165 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = x_17.unity_WorldToObject[2i];
  let x_172 : vec4<f32> = x_17.unity_MatrixInvV[0i];
  let x_175 : vec4<f32> = u_xlat0;
  let x_177 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_172.z, x_172.z, x_172.z)) + vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : vec4<f32> = x_17.unity_WorldToObject[3i];
  let x_184 : vec4<f32> = x_17.unity_MatrixInvV[0i];
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_184.w, x_184.w, x_184.w)) + vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat0;
  let x_196 : vec3<f32> = in_NORMAL0;
  u_xlat0.x = dot(vec3<f32>(x_192.x, x_192.y, x_192.z), x_196);
  let x_200 : vec4<f32> = x_17.unity_WorldToObject[1i];
  let x_203 : vec4<f32> = x_17.unity_MatrixInvV[1i];
  let x_205 : vec3<f32> = (vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_203.y, x_203.y, x_203.y));
  let x_206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_209 : vec4<f32> = x_17.unity_WorldToObject[0i];
  let x_212 : vec4<f32> = x_17.unity_MatrixInvV[1i];
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_212.x, x_212.x, x_212.x)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_221 : vec4<f32> = x_17.unity_WorldToObject[2i];
  let x_224 : vec4<f32> = x_17.unity_MatrixInvV[1i];
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_224.z, x_224.z, x_224.z)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_233 : vec4<f32> = x_17.unity_WorldToObject[3i];
  let x_236 : vec4<f32> = x_17.unity_MatrixInvV[1i];
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_236.w, x_236.w, x_236.w)) + vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat1;
  let x_246 : vec3<f32> = in_NORMAL0;
  u_xlat0.y = dot(vec3<f32>(x_244.x, x_244.y, x_244.z), x_246);
  let x_250 : vec4<f32> = x_17.unity_WorldToObject[1i];
  let x_253 : vec4<f32> = x_17.unity_MatrixInvV[2i];
  let x_255 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_253.y, x_253.y, x_253.y));
  let x_256 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = x_17.unity_WorldToObject[0i];
  let x_262 : vec4<f32> = x_17.unity_MatrixInvV[2i];
  let x_265 : vec4<f32> = u_xlat1;
  let x_267 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_262.x, x_262.x, x_262.x)) + vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_271 : vec4<f32> = x_17.unity_WorldToObject[2i];
  let x_274 : vec4<f32> = x_17.unity_MatrixInvV[2i];
  let x_277 : vec4<f32> = u_xlat1;
  let x_279 : vec3<f32> = ((vec3<f32>(x_271.x, x_271.y, x_271.z) * vec3<f32>(x_274.z, x_274.z, x_274.z)) + vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_283 : vec4<f32> = x_17.unity_WorldToObject[3i];
  let x_286 : vec4<f32> = x_17.unity_MatrixInvV[2i];
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.z) * vec3<f32>(x_286.w, x_286.w, x_286.w)) + vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec3<f32> = in_NORMAL0;
  u_xlat0.z = dot(vec3<f32>(x_294.x, x_294.y, x_294.z), x_296);
  let x_300 : vec4<f32> = u_xlat0;
  let x_302 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_300.x, x_300.y, x_300.z), vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_305);
  let x_307 : f32 = u_xlat6;
  let x_309 : vec4<f32> = u_xlat0;
  let x_311 : vec3<f32> = (vec3<f32>(x_307, x_307, x_307) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1);
}

