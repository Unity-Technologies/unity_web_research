type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(8) var<uniform> x_33 : VGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_NORMAL0;
  let x_19 : vec4<f32> = in_POSITION0;
  let x_21 : vec3<f32> = ((x_13 * vec3<f32>(0.01f, 0.01f, 0.01f)) + vec3<f32>(x_19.x, x_19.y, x_19.z));
  let x_22 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_21.x, x_21.y, x_21.z, x_22.w);
  let x_25 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_33.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_25.y, x_25.y, x_25.y, x_25.y) * x_39);
  let x_43 : vec4<f32> = x_33.unity_ObjectToWorld[0i];
  let x_44 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_43 * vec4<f32>(x_44.x, x_44.x, x_44.x, x_44.x)) + x_47);
  let x_51 : vec4<f32> = x_33.unity_ObjectToWorld[2i];
  let x_52 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_51 * vec4<f32>(x_52.z, x_52.z, x_52.z, x_52.z)) + x_55);
  let x_57 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_33.unity_ObjectToWorld[3i];
  u_xlat1 = (x_57 + x_60);
  let x_63 : vec4<f32> = x_33.unity_ObjectToWorld[3i];
  let x_65 : vec4<f32> = in_POSITION0;
  let x_68 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_63.x, x_63.y, x_63.z) * vec3<f32>(x_65.w, x_65.w, x_65.w)) + vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = x_33.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_74.y, x_74.y, x_74.y, x_74.y) * x_78);
  let x_81 : vec4<f32> = x_33.unity_MatrixVP[0i];
  let x_82 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_81 * vec4<f32>(x_82.x, x_82.x, x_82.x, x_82.x)) + x_85);
  let x_88 : vec4<f32> = x_33.unity_MatrixVP[2i];
  let x_89 : vec4<f32> = u_xlat1;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_88 * vec4<f32>(x_89.z, x_89.z, x_89.z, x_89.z)) + x_92);
  let x_95 : vec4<f32> = x_33.unity_MatrixVP[3i];
  let x_96 : vec4<f32> = u_xlat1;
  let x_99 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_95 * vec4<f32>(x_96.w, x_96.w, x_96.w, x_96.w)) + x_99);
  let x_106 : vec4<f32> = u_xlat1;
  gl_Position = x_106;
  let x_109 : vec3<f32> = in_NORMAL0;
  let x_112 : vec4<f32> = x_33.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_109, vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_118 : vec3<f32> = in_NORMAL0;
  let x_120 : vec4<f32> = x_33.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_118, vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_124 : vec3<f32> = in_NORMAL0;
  let x_126 : vec4<f32> = x_33.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_124, vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_132 : vec4<f32> = u_xlat2;
  let x_134 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_137);
  let x_139 : f32 = u_xlat18;
  let x_141 : vec4<f32> = u_xlat2;
  let x_143 : vec3<f32> = (vec3<f32>(x_139, x_139, x_139) * vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_148 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = vec3<f32>(x_148.x, x_148.y, x_148.z);
  let x_151 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_151.x, x_151.y, x_151.z);
  let x_154 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_33.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_154.x, x_154.x, x_154.x, x_154.x)) + x_158);
  let x_161 : vec4<f32> = u_xlat0;
  let x_165 : vec4<f32> = x_33.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_161.y, x_161.y, x_161.y, x_161.y)) + x_165);
  let x_167 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = x_33.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_167.z, x_167.z, x_167.z, x_167.z)) + x_171);
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_174.y, x_174.y, x_174.y, x_174.y) * x_176);
  let x_178 : vec4<f32> = u_xlat4;
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_178 * x_179);
  let x_181 : vec4<f32> = u_xlat3;
  let x_182 : vec4<f32> = u_xlat3;
  let x_184 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_181 * x_182) + x_184);
  let x_186 : vec4<f32> = u_xlat3;
  let x_187 : vec4<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_186 * vec4<f32>(x_187.x, x_187.x, x_187.x, x_187.x)) + x_190);
  let x_192 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = u_xlat2;
  let x_196 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_192 * vec4<f32>(x_193.z, x_193.z, x_193.z, x_193.z)) + x_196);
  let x_198 : vec4<f32> = u_xlat0;
  let x_199 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_198 * x_199) + x_201);
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_203, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_207);
  let x_209 : vec4<f32> = u_xlat0;
  let x_212 : vec4<f32> = x_33.unity_4LightAtten0;
  u_xlat0 = ((x_209 * x_212) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_217 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_217);
  let x_219 : vec4<f32> = u_xlat3;
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_219 * x_220);
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_222, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_226 : vec4<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_226 * x_227);
  let x_229 : vec4<f32> = u_xlat0;
  let x_233 : vec4<f32> = x_33.unity_LightColor[1i];
  let x_235 : vec3<f32> = (vec3<f32>(x_229.y, x_229.y, x_229.y) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_239 : vec4<f32> = x_33.unity_LightColor[0i];
  let x_241 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat3;
  let x_246 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241.x, x_241.x, x_241.x)) + vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_250 : vec4<f32> = x_33.unity_LightColor[2i];
  let x_252 : vec4<f32> = u_xlat0;
  let x_255 : vec4<f32> = u_xlat3;
  let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.z, x_252.z, x_252.z)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_261 : vec4<f32> = x_33.unity_LightColor[3i];
  let x_263 : vec4<f32> = u_xlat0;
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.w, x_263.w, x_263.w)) + vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : f32 = u_xlat2.y;
  let x_274 : f32 = u_xlat2.y;
  u_xlat18 = (x_272 * x_274);
  let x_277 : f32 = u_xlat2.x;
  let x_279 : f32 = u_xlat2.x;
  let x_281 : f32 = u_xlat18;
  u_xlat18 = ((x_277 * x_279) + -(x_281));
  let x_284 : vec4<f32> = u_xlat2;
  let x_286 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_284.y, x_284.z, x_284.z, x_284.x) * vec4<f32>(x_286.x, x_286.y, x_286.z, x_286.z));
  let x_291 : vec4<f32> = x_33.unity_SHBr;
  let x_292 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_291, x_292);
  let x_297 : vec4<f32> = x_33.unity_SHBg;
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_297, x_298);
  let x_303 : vec4<f32> = x_33.unity_SHBb;
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_303, x_304);
  let x_309 : vec4<f32> = x_33.unity_SHC;
  let x_311 : f32 = u_xlat18;
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311, x_311, x_311)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec4<f32> = u_xlat2;
  vs_TEXCOORD2 = (vec3<f32>(x_320.x, x_320.y, x_320.z) + vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : f32 = u_xlat1.y;
  let x_329 : f32 = x_33.x_ProjectionParams.x;
  u_xlat0.x = (x_326 * x_329);
  let x_333 : f32 = u_xlat0.x;
  u_xlat0.w = (x_333 * 0.5f);
  let x_339 : vec4<f32> = u_xlat1;
  let x_342 : vec2<f32> = (vec2<f32>(x_339.x, x_339.w) * vec2<f32>(0.5f, 0.5f));
  let x_343 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_342.x, x_343.y, x_342.y, x_343.w);
  let x_346 : vec4<f32> = u_xlat1;
  let x_347 : vec2<f32> = vec2<f32>(x_346.z, x_346.w);
  let x_348 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_348.x, x_348.y, x_347.x, x_347.y);
  let x_350 : vec4<f32> = u_xlat0;
  let x_352 : vec4<f32> = u_xlat0;
  let x_354 : vec2<f32> = (vec2<f32>(x_350.z, x_350.z) + vec2<f32>(x_352.x, x_352.w));
  let x_355 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_354.x, x_354.y, x_355.z, x_355.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD4);
}

