diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_ScreenSize : vec4<f32>,
  /* @offset(48) */
  x_LensFlareScreenSpaceStreakTex_TexelSize : vec4<f32>,
  /* @offset(64) */
  x_LensFlareScreenSpaceParams4 : vec4<f32>,
  /* @offset(80) */
  x_LensFlareScreenSpaceParams5 : vec4<f32>,
  /* @offset(96) */
  x_LensFlareScreenSpaceMipLevel : i32,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_15 : PGlobals;

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlatb3 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_LensFlareScreenSpaceStreakTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> u_xlat2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_88 : f32;
  var x_158 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_15.x_LensFlareScreenSpaceParams4.z;
  u_xlat0.x = floor(x_21);
  let x_29 : f32 = u_xlat0.x;
  let x_31 : f32 = u_xlat0.x;
  u_xlat3.x = (x_29 + x_31);
  let x_38 : f32 = u_xlat3.x;
  let x_40 : f32 = u_xlat3.x;
  u_xlatb3 = (x_38 >= -(x_40));
  let x_43 : bool = u_xlatb3;
  u_xlat3 = select(vec2<f32>(-2.0f, -0.5f), vec2<f32>(2.0f, 0.5f), vec2<bool>(x_43, x_43));
  let x_55 : f32 = u_xlat3.y;
  let x_57 : f32 = u_xlat0.x;
  u_xlat0.x = (x_55 * x_57);
  let x_61 : f32 = u_xlat0.x;
  u_xlat0.x = fract(x_61);
  let x_65 : f32 = u_xlat0.x;
  let x_67 : f32 = u_xlat3.x;
  u_xlat0.x = (x_65 * x_67);
  let x_72 : f32 = u_xlat0.x;
  u_xlatb0 = (x_72 == 0.0f);
  let x_76 : f32 = x_15.x_LensFlareScreenSpaceParams4.z;
  u_xlat3.x = fract(x_76);
  let x_81 : f32 = u_xlat3.x;
  u_xlat6.x = (-(x_81) + 1.0f);
  let x_86 : bool = u_xlatb0;
  if (x_86) {
    let x_92 : f32 = u_xlat3.x;
    x_88 = x_92;
  } else {
    let x_95 : f32 = u_xlat6.x;
    x_88 = -(x_95);
  }
  let x_97 : f32 = x_88;
  u_xlat3.x = x_97;
  let x_100 : f32 = u_xlat3.x;
  let x_103 : f32 = x_15.x_LensFlareScreenSpaceStreakTex_TexelSize.y;
  u_xlat3.x = (x_100 * x_103);
  let x_107 : f32 = u_xlat3.x;
  let x_109 : f32 = x_15.x_LensFlareScreenSpaceParams4.y;
  u_xlat3.x = (x_107 * x_109);
  let x_113 : f32 = u_xlat3.x;
  u_xlat3.x = (x_113 * 1.5f);
  let x_121 : i32 = x_15.x_LensFlareScreenSpaceMipLevel;
  u_xlat9 = f32(x_121);
  let x_123 : f32 = u_xlat9;
  u_xlat9 = (x_123 + 1.0f);
  let x_125 : f32 = u_xlat9;
  let x_127 : f32 = u_xlat3.x;
  u_xlat3.x = (x_125 * x_127);
  let x_131 : f32 = u_xlat3.x;
  let x_134 : f32 = x_15.x_LensFlareScreenSpaceParams5.x;
  u_xlat3.x = (x_131 / x_134);
  let x_139 : f32 = u_xlat3.x;
  let x_145 : f32 = vs_TEXCOORD0.y;
  u_xlat1.y = (-(x_139) + x_145);
  let x_149 : f32 = u_xlat1.y;
  u_xlat1.y = clamp(x_149, 0.0f, 1.0f);
  let x_153 : f32 = u_xlat6.x;
  u_xlat3.x = (-(x_153) + 1.0f);
  let x_157 : bool = u_xlatb0;
  if (x_157) {
    let x_162 : f32 = u_xlat6.x;
    x_158 = -(x_162);
  } else {
    let x_166 : f32 = u_xlat3.x;
    x_158 = -(x_166);
  }
  let x_168 : f32 = x_158;
  u_xlat0.x = x_168;
  let x_171 : f32 = u_xlat0.x;
  let x_173 : f32 = x_15.x_LensFlareScreenSpaceStreakTex_TexelSize.x;
  u_xlat0.x = (x_171 * x_173);
  let x_177 : f32 = u_xlat0.x;
  let x_179 : f32 = x_15.x_LensFlareScreenSpaceParams4.y;
  u_xlat0.x = (x_177 * x_179);
  let x_182 : f32 = u_xlat9;
  let x_184 : f32 = u_xlat0.x;
  u_xlat0.x = (x_182 * x_184);
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = (x_188 * 1.5f);
  let x_192 : f32 = u_xlat0.x;
  let x_194 : f32 = x_15.x_LensFlareScreenSpaceParams5.x;
  u_xlat0.x = (x_192 / x_194);
  let x_198 : f32 = u_xlat0.x;
  let x_201 : f32 = vs_TEXCOORD0.x;
  u_xlat1.x = (-(x_198) + x_201);
  let x_205 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_205, 0.0f, 1.0f);
  let x_208 : vec3<f32> = u_xlat0;
  let x_210 : vec2<f32> = vs_TEXCOORD0;
  let x_211 : vec2<f32> = (vec2<f32>(x_208.x, x_208.x) + x_210);
  let x_212 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_211.x, x_211.y, x_212.z);
  let x_214 : vec3<f32> = u_xlat0;
  let x_218 : vec2<f32> = clamp(vec2<f32>(x_214.x, x_214.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_219 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_224 : vec4<f32> = x_15.x_ScreenSize;
  let x_231 : vec4<f32> = x_15.x_RTHandleScale;
  u_xlat6 = ((-(vec2<f32>(x_224.z, x_224.w)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_231.x, x_231.y));
  let x_234 : vec2<f32> = u_xlat6;
  let x_235 : vec3<f32> = u_xlat1;
  let x_237 : vec2<f32> = min(x_234, vec2<f32>(x_235.x, x_235.y));
  let x_238 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_237.x, x_237.y, x_238.z);
  let x_250 : vec3<f32> = u_xlat1;
  let x_254 : f32 = x_15.x_GlobalMipBias.x;
  let x_255 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_250.x, x_250.y), x_254);
  u_xlat1 = vec3<f32>(x_255.x, x_255.y, x_255.z);
  let x_258 : vec2<f32> = vs_TEXCOORD0;
  let x_259 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_258.x, x_258.y, x_259.z);
  let x_261 : vec3<f32> = u_xlat2;
  let x_265 : vec2<f32> = clamp(vec2<f32>(x_261.x, x_261.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_266 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_265.x, x_265.y, x_266.z);
  let x_268 : vec2<f32> = u_xlat6;
  let x_269 : vec3<f32> = u_xlat2;
  let x_271 : vec2<f32> = min(x_268, vec2<f32>(x_269.x, x_269.y));
  let x_272 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_271.x, x_271.y, x_272.z);
  let x_274 : vec2<f32> = u_xlat6;
  let x_275 : vec3<f32> = u_xlat0;
  let x_277 : vec2<f32> = min(x_274, vec2<f32>(x_275.x, x_275.y));
  let x_278 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_277.x, x_277.y, x_278.z);
  let x_283 : vec3<f32> = u_xlat0;
  let x_286 : f32 = x_15.x_GlobalMipBias.x;
  let x_287 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_283.x, x_283.y), x_286);
  u_xlat0 = vec3<f32>(x_287.x, x_287.y, x_287.z);
  let x_292 : vec3<f32> = u_xlat2;
  let x_295 : f32 = x_15.x_GlobalMipBias.x;
  let x_296 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_292.x, x_292.y), x_295);
  u_xlat2 = vec3<f32>(x_296.x, x_296.y, x_296.z);
  let x_298 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_298 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_301 : vec3<f32> = u_xlat1;
  let x_305 : vec3<f32> = u_xlat2;
  u_xlat1 = ((x_301 * vec3<f32>(0.25f, 0.25f, 0.25f)) + x_305);
  let x_309 : vec3<f32> = u_xlat0;
  let x_311 : vec3<f32> = u_xlat1;
  let x_312 : vec3<f32> = ((x_309 * vec3<f32>(0.25f, 0.25f, 0.25f)) + x_311);
  let x_313 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


