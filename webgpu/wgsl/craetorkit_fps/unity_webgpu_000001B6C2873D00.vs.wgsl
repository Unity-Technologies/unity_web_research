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

var<private> vs_TEXCOORD8 : f32;

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
  let x_79 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_80 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_79 * vec4<f32>(x_80.w, x_80.w, x_80.w, x_80.w)) + x_83);
  let x_91 : vec4<f32> = u_xlat0;
  gl_Position = x_91;
  let x_99 : f32 = u_xlat0.z;
  vs_TEXCOORD8 = x_99;
  let x_103 : vec4<f32> = in_TEXCOORD0;
  let x_107 : vec4<f32> = x_17.x_MainTex_ST;
  let x_111 : vec4<f32> = x_17.x_MainTex_ST;
  let x_113 : vec2<f32> = ((vec2<f32>(x_103.x, x_103.y) * vec2<f32>(x_107.x, x_107.y)) + vec2<f32>(x_111.z, x_111.w));
  let x_114 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = in_TEXCOORD0;
  let x_120 : vec4<f32> = x_17.x_Normal_ST;
  let x_124 : vec4<f32> = x_17.x_Normal_ST;
  let x_126 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_120.x, x_120.y)) + vec2<f32>(x_124.z, x_124.w));
  let x_127 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_127.x, x_127.y, x_126.x, x_126.y);
  let x_131 : vec3<f32> = in_NORMAL0;
  let x_133 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.y = dot(x_131, vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_137 : vec3<f32> = in_NORMAL0;
  let x_139 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.z = dot(x_137, vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_143 : vec3<f32> = in_NORMAL0;
  let x_145 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.x = dot(x_143, vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_151.x, x_151.y, x_151.z), vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_156);
  let x_158 : f32 = u_xlat12;
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : vec3<f32> = (vec3<f32>(x_158, x_158, x_158) * vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_168 : vec4<f32> = in_TANGENT0;
  let x_171 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_168.y, x_168.y, x_168.y) * vec3<f32>(x_171.y, x_171.z, x_171.x));
  let x_175 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_177 : vec4<f32> = in_TANGENT0;
  let x_180 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_175.y, x_175.z, x_175.x) * vec3<f32>(x_177.x, x_177.x, x_177.x)) + x_180);
  let x_183 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_185 : vec4<f32> = in_TANGENT0;
  let x_188 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_183.y, x_183.z, x_183.x) * vec3<f32>(x_185.z, x_185.z, x_185.z)) + x_188);
  let x_190 : vec3<f32> = u_xlat2;
  let x_191 : vec3<f32> = u_xlat2;
  u_xlat12 = dot(x_190, x_191);
  let x_193 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_193);
  let x_195 : f32 = u_xlat12;
  let x_197 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_195, x_195, x_195) * x_197);
  let x_200 : vec4<f32> = u_xlat0;
  let x_202 : vec3<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_200.x, x_200.y, x_200.z) * x_202);
  let x_204 : vec4<f32> = u_xlat0;
  let x_206 : vec3<f32> = u_xlat2;
  let x_209 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_204.z, x_204.x, x_204.y) * vec3<f32>(x_206.y, x_206.z, x_206.x)) + -(x_209));
  let x_215 : f32 = in_TANGENT0.w;
  let x_218 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat12 = (x_215 * x_218);
  let x_220 : f32 = u_xlat12;
  let x_222 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_220, x_220, x_220) * x_222);
  let x_226 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_226;
  let x_229 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_229;
  let x_232 : f32 = u_xlat0.y;
  vs_TEXCOORD1.z = x_232;
  let x_236 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_236;
  let x_240 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_240;
  let x_243 : f32 = u_xlat0.z;
  vs_TEXCOORD2.z = x_243;
  let x_246 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = x_246;
  let x_249 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_249;
  let x_252 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_252;
  let x_256 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_256;
  let x_258 : f32 = u_xlat1.y;
  let x_261 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_258 * x_261);
  let x_265 : f32 = x_17.unity_MatrixV[0i].z;
  let x_267 : f32 = u_xlat1.x;
  let x_270 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_265 * x_267) + x_270);
  let x_274 : f32 = x_17.unity_MatrixV[2i].z;
  let x_276 : f32 = u_xlat1.z;
  let x_279 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_274 * x_276) + x_279);
  let x_283 : f32 = x_17.unity_MatrixV[3i].z;
  let x_285 : f32 = u_xlat1.w;
  let x_288 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_283 * x_285) + x_288);
  let x_294 : f32 = u_xlat0.x;
  vs_TEXCOORD5.z = -(x_294);
  let x_298 : vec4<f32> = u_xlat1;
  let x_301 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_303 : vec3<f32> = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_301.x, x_301.y, x_301.w));
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_309 : vec4<f32> = u_xlat1;
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : vec3<f32> = ((vec3<f32>(x_307.x, x_307.y, x_307.w) * vec3<f32>(x_309.x, x_309.x, x_309.x)) + vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_320 : vec4<f32> = u_xlat1;
  let x_323 : vec4<f32> = u_xlat0;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.w) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_329 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_331 : vec4<f32> = u_xlat1;
  let x_334 : vec4<f32> = u_xlat0;
  let x_336 : vec3<f32> = ((vec3<f32>(x_329.x, x_329.y, x_329.w) * vec3<f32>(x_331.w, x_331.w, x_331.w)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat0;
  let x_343 : vec2<f32> = (vec2<f32>(x_339.x, x_339.z) * vec2<f32>(0.5f, 0.5f));
  let x_344 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_343.x, x_344.y, x_343.y, x_344.w);
  let x_347 : f32 = u_xlat0.y;
  let x_349 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_347 * x_349);
  let x_353 : f32 = u_xlat0.z;
  vs_TEXCOORD5.w = x_353;
  let x_356 : f32 = u_xlat0.x;
  u_xlat1.w = (x_356 * 0.5f);
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec2<f32> = (vec2<f32>(x_359.z, x_359.z) + vec2<f32>(x_361.x, x_361.w));
  let x_364 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(5)
  vs_TEXCOORD4_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD8_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(6)
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
  return main_out(vs_TEXCOORD4, gl_Position, vs_TEXCOORD8, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0);
}

