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

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_48 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_50 : vec4<f32> = in_POSITION0;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_50.w, x_50.w, x_50.w)) + vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_86 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_87 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = u_xlat2;
  gl_Position = ((x_86 * vec4<f32>(x_87.w, x_87.w, x_87.w, x_87.w)) + x_90);
  let x_97 : vec4<f32> = in_TEXCOORD0;
  let x_101 : vec4<f32> = x_17.x_MainTex_ST;
  let x_105 : vec4<f32> = x_17.x_MainTex_ST;
  let x_107 : vec2<f32> = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(x_101.x, x_101.y)) + vec2<f32>(x_105.z, x_105.w));
  let x_108 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_108.w);
  let x_110 : vec4<f32> = in_TEXCOORD0;
  let x_114 : vec4<f32> = x_17.x_Normal_ST;
  let x_118 : vec4<f32> = x_17.x_Normal_ST;
  let x_120 : vec2<f32> = ((vec2<f32>(x_110.x, x_110.y) * vec2<f32>(x_114.x, x_114.y)) + vec2<f32>(x_118.z, x_118.w));
  let x_121 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_121.x, x_121.y, x_120.x, x_120.y);
  let x_127 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = x_127;
  let x_133 : vec3<f32> = in_NORMAL0;
  let x_135 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat2.y = dot(x_133, vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec3<f32> = in_NORMAL0;
  let x_141 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat2.z = dot(x_139, vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_146 : vec3<f32> = in_NORMAL0;
  let x_148 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat2.x = dot(x_146, vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec4<f32> = u_xlat2;
  let x_154 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_152.x, x_152.y, x_152.z), vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_159 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_159);
  let x_162 : vec4<f32> = u_xlat0;
  let x_164 : vec4<f32> = u_xlat2;
  let x_166 : vec3<f32> = (vec3<f32>(x_162.x, x_162.x, x_162.x) * vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_167 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_172 : vec4<f32> = in_TANGENT0;
  let x_175 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_172.y, x_172.y, x_172.y) * vec3<f32>(x_175.y, x_175.z, x_175.x));
  let x_179 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_181 : vec4<f32> = in_TANGENT0;
  let x_184 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_179.y, x_179.z, x_179.x) * vec3<f32>(x_181.x, x_181.x, x_181.x)) + x_184);
  let x_187 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_189 : vec4<f32> = in_TANGENT0;
  let x_192 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_187.y, x_187.z, x_187.x) * vec3<f32>(x_189.z, x_189.z, x_189.z)) + x_192);
  let x_194 : vec3<f32> = u_xlat3;
  let x_195 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_194, x_195);
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_199);
  let x_202 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_202.x, x_202.x, x_202.x) * x_204);
  let x_207 : vec4<f32> = u_xlat2;
  let x_209 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_207.x, x_207.y, x_207.z) * x_209);
  let x_211 : vec4<f32> = u_xlat2;
  let x_213 : vec3<f32> = u_xlat3;
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_211.z, x_211.x, x_211.y) * vec3<f32>(x_213.y, x_213.z, x_213.x)) + -(x_216));
  let x_221 : f32 = in_TANGENT0.w;
  let x_224 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat0.x = (x_221 * x_224);
  let x_227 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_227.x, x_227.x, x_227.x) * x_229);
  let x_232 : f32 = u_xlat4.x;
  vs_TEXCOORD1.y = x_232;
  let x_235 : f32 = u_xlat3.z;
  vs_TEXCOORD1.x = x_235;
  let x_238 : f32 = u_xlat2.y;
  vs_TEXCOORD1.z = x_238;
  let x_242 : f32 = u_xlat3.x;
  vs_TEXCOORD2.x = x_242;
  let x_246 : f32 = u_xlat3.y;
  vs_TEXCOORD3.x = x_246;
  let x_249 : f32 = u_xlat2.z;
  vs_TEXCOORD2.z = x_249;
  let x_252 : f32 = u_xlat2.x;
  vs_TEXCOORD3.z = x_252;
  let x_255 : f32 = u_xlat0.y;
  vs_TEXCOORD2.w = x_255;
  let x_258 : f32 = u_xlat0.z;
  vs_TEXCOORD3.w = x_258;
  let x_261 : f32 = u_xlat4.y;
  vs_TEXCOORD2.y = x_261;
  let x_264 : f32 = u_xlat4.z;
  vs_TEXCOORD3.y = x_264;
  let x_268 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_268;
  let x_270 : f32 = u_xlat1.y;
  let x_273 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat0.x = (x_270 * x_273);
  let x_277 : f32 = x_17.unity_MatrixV[0i].z;
  let x_279 : f32 = u_xlat1.x;
  let x_282 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_277 * x_279) + x_282);
  let x_286 : f32 = x_17.unity_MatrixV[2i].z;
  let x_288 : f32 = u_xlat1.z;
  let x_291 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_286 * x_288) + x_291);
  let x_295 : f32 = x_17.unity_MatrixV[3i].z;
  let x_297 : f32 = u_xlat1.w;
  let x_300 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_295 * x_297) + x_300);
  let x_306 : f32 = u_xlat0.x;
  vs_TEXCOORD4.z = -(x_306);
  let x_310 : vec4<f32> = u_xlat1;
  let x_313 : vec4<f32> = x_17.unity_MatrixVP[1i];
  let x_315 : vec3<f32> = (vec3<f32>(x_310.y, x_310.y, x_310.y) * vec3<f32>(x_313.x, x_313.y, x_313.w));
  let x_316 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
  let x_319 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_321 : vec4<f32> = u_xlat1;
  let x_324 : vec4<f32> = u_xlat0;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.w) * vec3<f32>(x_321.x, x_321.x, x_321.x)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_330 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_332 : vec4<f32> = u_xlat1;
  let x_335 : vec4<f32> = u_xlat0;
  let x_337 : vec3<f32> = ((vec3<f32>(x_330.x, x_330.y, x_330.w) * vec3<f32>(x_332.z, x_332.z, x_332.z)) + vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_343 : vec4<f32> = u_xlat1;
  let x_346 : vec4<f32> = u_xlat0;
  let x_348 : vec3<f32> = ((vec3<f32>(x_341.x, x_341.y, x_341.w) * vec3<f32>(x_343.w, x_343.w, x_343.w)) + vec3<f32>(x_346.x, x_346.y, x_346.z));
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
  let x_351 : vec4<f32> = u_xlat0;
  let x_355 : vec2<f32> = (vec2<f32>(x_351.x, x_351.z) * vec2<f32>(0.5f, 0.5f));
  let x_356 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_355.x, x_356.y, x_355.y, x_356.w);
  let x_359 : f32 = u_xlat0.y;
  let x_361 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_359 * x_361);
  let x_365 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_365;
  let x_368 : f32 = u_xlat0.x;
  u_xlat1.w = (x_368 * 0.5f);
  let x_371 : vec4<f32> = u_xlat1;
  let x_373 : vec4<f32> = u_xlat1;
  let x_375 : vec2<f32> = (vec2<f32>(x_371.z, x_371.z) + vec2<f32>(x_373.x, x_373.w));
  let x_376 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_COLOR0);
}

