struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb5 : bool;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat6 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlatb14 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_GrainTex : sampler;

var<private> u_xlat12 : f32;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_224 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_81);
  let x_83 : bool = u_xlatb5;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat5.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat5.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat5.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_113);
    let x_116 : f32 = u_xlat5.x;
    let x_117 : f32 = u_xlat9;
    u_xlat5.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec3<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat5;
    let x_127 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_132 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_132);
    let x_134 : f32 = u_xlat13;
    let x_136 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat13 = (x_134 * x_136);
    let x_139 : f32 = u_xlat1.x;
    let x_141 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_139 * x_141);
    let x_145 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_145), 1.0f);
    let x_151 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_151), 1.0f);
    let x_154 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_154);
    let x_156 : f32 = u_xlat6;
    let x_158 : f32 = u_xlat2.x;
    u_xlat2.x = (x_156 * x_158);
    let x_162 : f32 = u_xlat2.x;
    let x_164 : f32 = u_xlat2.x;
    u_xlat6 = (x_162 * x_164);
    let x_167 : f32 = u_xlat6;
    u_xlat10 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat6;
    let x_173 : f32 = u_xlat10;
    u_xlat10 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat6;
    let x_178 : f32 = u_xlat10;
    u_xlat10 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat6;
    let x_183 : f32 = u_xlat10;
    u_xlat6 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat6;
    let x_189 : f32 = u_xlat2.x;
    u_xlat10 = (x_187 * x_189);
    let x_193 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_193));
    let x_196 : f32 = u_xlat10;
    u_xlat10 = ((x_196 * -2.0f) + 1.570796371f);
    let x_201 : bool = u_xlatb14;
    let x_202 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_202, x_201);
    let x_205 : f32 = u_xlat2.x;
    let x_206 : f32 = u_xlat6;
    let x_208 : f32 = u_xlat10;
    u_xlat2.x = ((x_205 * x_206) + x_208);
    let x_212 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_212, 1.0f);
    let x_217 : f32 = u_xlat1.x;
    let x_219 : f32 = u_xlat1.x;
    u_xlatb1 = (x_217 < -(x_219));
    let x_222 : bool = u_xlatb1;
    if (x_222) {
      let x_228 : f32 = u_xlat2.x;
      x_224 = -(x_228);
    } else {
      let x_232 : f32 = u_xlat2.x;
      x_224 = x_232;
    }
    let x_233 : f32 = x_224;
    u_xlat1.x = x_233;
    let x_235 : f32 = u_xlat13;
    let x_237 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_235 * x_237) + -1.0f);
    let x_241 : vec3<f32> = u_xlat0;
    let x_243 : vec4<f32> = u_xlat1;
    let x_246 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_241.x, x_241.y) * vec2<f32>(x_243.x, x_243.x)) + x_246);
  }
  let x_259 : vec2<f32> = vs_TEXCOORD0;
  let x_260 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_259);
  u_xlat0.x = x_260.x;
  let x_268 : vec2<f32> = u_xlat5;
  let x_269 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_268);
  u_xlat1 = x_269;
  let x_270 : vec3<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_270.x, x_270.x, x_270.x) * vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec2<f32> = vs_TEXCOORD1;
  let x_278 : vec4<f32> = x_26.x_Grain_Params2;
  let x_282 : vec4<f32> = x_26.x_Grain_Params2;
  let x_284 : vec2<f32> = ((x_275 * vec2<f32>(x_278.x, x_278.y)) + vec2<f32>(x_282.z, x_282.w));
  let x_285 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_284.x, x_284.y, x_285.z);
  let x_292 : vec3<f32> = u_xlat2;
  let x_294 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_292.x, x_292.y));
  u_xlat2 = vec3<f32>(x_294.x, x_294.y, x_294.z);
  let x_296 : vec3<f32> = u_xlat0;
  u_xlat3 = x_296;
  let x_297 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_297, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_302 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_302, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_308 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_308);
  let x_312 : f32 = x_26.x_Grain_Params1.x;
  let x_313 : f32 = u_xlat12;
  u_xlat12 = ((x_312 * -(x_313)) + 1.0f);
  let x_317 : vec3<f32> = u_xlat0;
  let x_318 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_317 * x_318);
  let x_320 : vec3<f32> = u_xlat2;
  let x_322 : f32 = x_26.x_Grain_Params1.y;
  let x_324 : f32 = x_26.x_Grain_Params1.y;
  let x_326 : f32 = x_26.x_Grain_Params1.y;
  u_xlat2 = (x_320 * vec3<f32>(x_322, x_324, x_326));
  let x_329 : vec3<f32> = u_xlat2;
  let x_330 : f32 = u_xlat12;
  let x_333 : vec3<f32> = u_xlat0;
  let x_334 : vec3<f32> = ((x_329 * vec3<f32>(x_330, x_330, x_330)) + x_333);
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_340 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_340);
  let x_342 : bool = u_xlatb0;
  if (x_342) {
    let x_345 : vec4<f32> = u_xlat1;
    u_xlat0 = vec3<f32>(x_345.x, x_345.y, x_345.z);
    let x_347 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_347, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_351 : vec3<f32> = u_xlat0;
    u_xlat1.w = dot(x_351, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_356 : vec4<f32> = u_xlat1;
  SV_Target0 = x_356;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

