struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_Normal_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec3<f32>;
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
  let x_50 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_52.w, x_52.w, x_52.w)) + vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : vec4<f32> = u_xlat1;
  let x_62 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_58.y, x_58.y, x_58.y, x_58.y) * x_62);
  let x_65 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_66 : vec4<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_65 * vec4<f32>(x_66.x, x_66.x, x_66.x, x_66.x)) + x_69);
  let x_72 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_73 : vec4<f32> = u_xlat1;
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_72 * vec4<f32>(x_73.z, x_73.z, x_73.z, x_73.z)) + x_76);
  let x_85 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_86 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = u_xlat0;
  gl_Position = ((x_85 * vec4<f32>(x_86.w, x_86.w, x_86.w, x_86.w)) + x_89);
  let x_96 : vec4<f32> = in_TEXCOORD0;
  let x_100 : vec4<f32> = x_17.x_MainTex_ST;
  let x_104 : vec4<f32> = x_17.x_MainTex_ST;
  let x_106 : vec2<f32> = ((vec2<f32>(x_96.x, x_96.y) * vec2<f32>(x_100.x, x_100.y)) + vec2<f32>(x_104.z, x_104.w));
  let x_107 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_109 : vec4<f32> = in_TEXCOORD0;
  let x_113 : vec4<f32> = x_17.x_Normal_ST;
  let x_117 : vec4<f32> = x_17.x_Normal_ST;
  let x_119 : vec2<f32> = ((vec2<f32>(x_109.x, x_109.y) * vec2<f32>(x_113.x, x_113.y)) + vec2<f32>(x_117.z, x_117.w));
  let x_120 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_120.x, x_120.y, x_119.x, x_119.y);
  let x_124 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_124, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_131 : vec3<f32> = in_NORMAL0;
  let x_133 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_131, vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_138 : vec3<f32> = in_NORMAL0;
  let x_140 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_138, vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_146 : vec4<f32> = u_xlat0;
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_146.x, x_146.y, x_146.z), vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_151);
  let x_153 : f32 = u_xlat12;
  let x_155 : vec4<f32> = u_xlat0;
  let x_157 : vec3<f32> = (vec3<f32>(x_153, x_153, x_153) * vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_163 : vec4<f32> = in_TANGENT0;
  let x_166 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_163.y, x_163.y, x_163.y) * vec3<f32>(x_166.y, x_166.z, x_166.x));
  let x_170 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_172 : vec4<f32> = in_TANGENT0;
  let x_175 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_170.y, x_170.z, x_170.x) * vec3<f32>(x_172.x, x_172.x, x_172.x)) + x_175);
  let x_178 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_180 : vec4<f32> = in_TANGENT0;
  let x_183 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_178.y, x_178.z, x_178.x) * vec3<f32>(x_180.z, x_180.z, x_180.z)) + x_183);
  let x_185 : vec3<f32> = u_xlat2;
  let x_186 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_185, x_186);
  let x_188 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_188);
  let x_190 : f32 = u_xlat12;
  let x_192 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_190, x_190, x_190) * x_192);
  let x_195 : vec4<f32> = u_xlat0;
  let x_197 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_195.x, x_195.y, x_195.z) * x_197);
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec3<f32> = u_xlat2;
  let x_204 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_199.z, x_199.x, x_199.y) * vec3<f32>(x_201.y, x_201.z, x_201.x)) + -(x_204));
  let x_210 : f32 = in_TANGENT0.w;
  let x_213 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat12 = (x_210 * x_213);
  let x_215 : f32 = u_xlat12;
  let x_217 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_215, x_215, x_215) * x_217);
  let x_221 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_221;
  let x_225 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_225;
  let x_228 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_228;
  let x_232 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_232;
  let x_236 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_236;
  let x_239 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_239;
  let x_242 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_242;
  let x_245 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_245;
  let x_248 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_248;
  let x_252 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_252;
  let x_254 : f32 = u_xlat1.y;
  let x_257 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_254 * x_257);
  let x_261 : f32 = x_17.unity_MatrixV[0i].z;
  let x_263 : f32 = u_xlat1.x;
  let x_266 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_261 * x_263) + x_266);
  let x_270 : f32 = x_17.unity_MatrixV[2i].z;
  let x_272 : f32 = u_xlat1.z;
  let x_275 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_270 * x_272) + x_275);
  let x_279 : f32 = x_17.unity_MatrixV[3i].z;
  let x_281 : f32 = u_xlat1.w;
  let x_284 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_279 * x_281) + x_284);
  let x_290 : f32 = u_xlat0.x;
  vs_TEXCOORD5.z = -(x_290);
  let x_294 : vec4<f32> = u_xlat1;
  let x_297 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_299 : vec3<f32> = (vec3<f32>(x_294.y, x_294.y, x_294.y) * vec3<f32>(x_297.x, x_297.y, x_297.w));
  let x_300 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_303 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_305 : vec4<f32> = u_xlat1;
  let x_308 : vec4<f32> = u_xlat0;
  let x_310 : vec3<f32> = ((vec3<f32>(x_303.x, x_303.y, x_303.w) * vec3<f32>(x_305.x, x_305.x, x_305.x)) + vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_314 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_316 : vec4<f32> = u_xlat1;
  let x_319 : vec4<f32> = u_xlat0;
  let x_321 : vec3<f32> = ((vec3<f32>(x_314.x, x_314.y, x_314.w) * vec3<f32>(x_316.z, x_316.z, x_316.z)) + vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_327 : vec4<f32> = u_xlat1;
  let x_330 : vec4<f32> = u_xlat0;
  let x_332 : vec3<f32> = ((vec3<f32>(x_325.x, x_325.y, x_325.w) * vec3<f32>(x_327.w, x_327.w, x_327.w)) + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat0;
  let x_339 : vec2<f32> = (vec2<f32>(x_335.x, x_335.z) * vec2<f32>(0.5f, 0.5f));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_340.y, x_339.y, x_340.w);
  let x_343 : f32 = u_xlat0.y;
  let x_345 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_343 * x_345);
  let x_349 : f32 = u_xlat0.z;
  vs_TEXCOORD5.w = x_349;
  let x_352 : f32 = u_xlat0.x;
  u_xlat1.w = (x_352 * 0.5f);
  let x_355 : vec4<f32> = u_xlat1;
  let x_357 : vec4<f32> = u_xlat1;
  let x_359 : vec2<f32> = (vec2<f32>(x_355.z, x_355.z) + vec2<f32>(x_357.x, x_357.w));
  let x_360 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_359.x, x_359.y, x_360.z, x_360.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_COLOR0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0);
}

