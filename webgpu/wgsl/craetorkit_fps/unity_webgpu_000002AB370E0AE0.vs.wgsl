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
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat1;
  gl_Position = x_95;
  let x_100 : vec3<f32> = in_NORMAL0;
  let x_103 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_100, vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_109 : vec3<f32> = in_NORMAL0;
  let x_111 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_109, vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_115 : vec3<f32> = in_NORMAL0;
  let x_117 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_115, vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_123 : vec4<f32> = u_xlat2;
  let x_125 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_123.x, x_123.y, x_123.z), vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_128);
  let x_130 : f32 = u_xlat18;
  let x_132 : vec4<f32> = u_xlat2;
  let x_134 : vec3<f32> = (vec3<f32>(x_130, x_130, x_130) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_139 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = vec3<f32>(x_139.x, x_139.y, x_139.z);
  let x_142 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_142.x, x_142.y, x_142.z);
  let x_146 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_146;
  let x_152 : vec2<f32> = in_TEXCOORD0;
  let x_155 : vec4<f32> = x_20.x_MainTex_ST;
  let x_159 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_152 * vec2<f32>(x_155.x, x_155.y)) + vec2<f32>(x_159.z, x_159.w));
  let x_163 : vec4<f32> = u_xlat0;
  let x_167 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_163.x, x_163.x, x_163.x, x_163.x)) + x_167);
  let x_170 : vec4<f32> = u_xlat0;
  let x_174 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_170.y, x_170.y, x_170.y, x_170.y)) + x_174);
  let x_176 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_176.z, x_176.z, x_176.z, x_176.z)) + x_180);
  let x_183 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_183.y, x_183.y, x_183.y, x_183.y) * x_185);
  let x_187 : vec4<f32> = u_xlat4;
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_187 * x_188);
  let x_190 : vec4<f32> = u_xlat3;
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_190 * x_191) + x_193);
  let x_195 : vec4<f32> = u_xlat3;
  let x_196 : vec4<f32> = u_xlat2;
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_195 * vec4<f32>(x_196.x, x_196.x, x_196.x, x_196.x)) + x_199);
  let x_201 : vec4<f32> = u_xlat0;
  let x_202 : vec4<f32> = u_xlat2;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_201 * vec4<f32>(x_202.z, x_202.z, x_202.z, x_202.z)) + x_205);
  let x_207 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat0;
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_207 * x_208) + x_210);
  let x_212 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_212, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_216 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_216);
  let x_218 : vec4<f32> = u_xlat0;
  let x_221 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_218 * x_221) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_226);
  let x_228 : vec4<f32> = u_xlat3;
  let x_229 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_228 * x_229);
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_231, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_235 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_235 * x_236);
  let x_238 : vec4<f32> = u_xlat0;
  let x_242 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_244 : vec3<f32> = (vec3<f32>(x_238.y, x_238.y, x_238.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_248 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_250 : vec4<f32> = u_xlat0;
  let x_253 : vec4<f32> = u_xlat3;
  let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.x, x_250.x, x_250.x)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_261 : vec4<f32> = u_xlat0;
  let x_264 : vec4<f32> = u_xlat3;
  let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.z, x_261.z, x_261.z)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_272 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_272.w, x_272.w, x_272.w)) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : f32 = u_xlat2.y;
  let x_283 : f32 = u_xlat2.y;
  u_xlat18 = (x_281 * x_283);
  let x_286 : f32 = u_xlat2.x;
  let x_288 : f32 = u_xlat2.x;
  let x_290 : f32 = u_xlat18;
  u_xlat18 = ((x_286 * x_288) + -(x_290));
  let x_293 : vec4<f32> = u_xlat2;
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_293.y, x_293.z, x_293.z, x_293.x) * vec4<f32>(x_295.x, x_295.y, x_295.z, x_295.z));
  let x_300 : vec4<f32> = x_20.unity_SHBr;
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_300, x_301);
  let x_306 : vec4<f32> = x_20.unity_SHBg;
  let x_307 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_306, x_307);
  let x_312 : vec4<f32> = x_20.unity_SHBb;
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_312, x_313);
  let x_318 : vec4<f32> = x_20.unity_SHC;
  let x_320 : f32 = u_xlat18;
  let x_323 : vec4<f32> = u_xlat3;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320, x_320, x_320)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_329.x, x_329.y, x_329.z) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_335 : f32 = u_xlat1.y;
  let x_338 : f32 = x_20.x_ProjectionParams.x;
  u_xlat0.x = (x_335 * x_338);
  let x_342 : f32 = u_xlat0.x;
  u_xlat0.w = (x_342 * 0.5f);
  let x_347 : vec4<f32> = u_xlat1;
  let x_350 : vec2<f32> = (vec2<f32>(x_347.x, x_347.w) * vec2<f32>(0.5f, 0.5f));
  let x_351 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_350.x, x_351.y, x_350.y, x_351.w);
  let x_354 : vec4<f32> = u_xlat1;
  let x_355 : vec2<f32> = vec2<f32>(x_354.z, x_354.w);
  let x_356 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_356.x, x_356.y, x_355.x, x_355.y);
  let x_358 : vec4<f32> = u_xlat0;
  let x_360 : vec4<f32> = u_xlat0;
  let x_362 : vec2<f32> = (vec2<f32>(x_358.z, x_358.z) + vec2<f32>(x_360.x, x_360.w));
  let x_363 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_362.x, x_362.y, x_363.z, x_363.w);
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
  vs_COLOR0_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD5);
}

