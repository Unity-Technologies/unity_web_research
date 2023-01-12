struct PGlobals {
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(5) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb5 : bool;
  var u_xlat5 : vec2<f32>;
  var u_xlat2 : f32;
  var u_xlat3 : f32;
  var u_xlat9 : f32;
  var u_xlat13 : f32;
  var u_xlat6 : f32;
  var u_xlat10 : f32;
  var u_xlatb14 : bool;
  var u_xlatb1 : bool;
  var x_209 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Amount;
  u_xlat8 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Amount;
  let x_44 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_CenterScale;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_69);
  let x_79 : f32 = x_25.x_Distortion_Amount.w;
  u_xlatb5 = (0.0f < x_79);
  let x_81 : bool = u_xlatb5;
  if (x_81) {
    let x_85 : vec4<f32> = u_xlat1;
    let x_88 : vec4<f32> = x_25.x_Distortion_Amount;
    u_xlat5 = (vec2<f32>(x_85.x, x_85.x) * vec2<f32>(x_88.x, x_88.y));
    let x_93 : f32 = u_xlat5.x;
    u_xlat2 = sin(x_93);
    let x_97 : f32 = u_xlat5.x;
    u_xlat3 = cos(x_97);
    let x_99 : f32 = u_xlat2;
    let x_100 : f32 = u_xlat3;
    u_xlat5.x = (x_99 / x_100);
    let x_107 : f32 = u_xlat5.y;
    u_xlat9 = (1.0f / x_107);
    let x_110 : f32 = u_xlat5.x;
    let x_111 : f32 = u_xlat9;
    u_xlat5.x = ((x_110 * x_111) + -1.0f);
    let x_116 : vec4<f32> = u_xlat0;
    let x_118 : vec2<f32> = u_xlat5;
    let x_121 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_118.x, x_118.x)) + x_121);
  } else {
    let x_126 : f32 = u_xlat1.x;
    u_xlat13 = (1.0f / x_126);
    let x_128 : f32 = u_xlat13;
    let x_130 : f32 = x_25.x_Distortion_Amount.x;
    u_xlat13 = (x_128 * x_130);
    let x_133 : f32 = u_xlat1.x;
    let x_135 : f32 = x_25.x_Distortion_Amount.y;
    u_xlat1.x = (x_133 * x_135);
    let x_139 : f32 = u_xlat1.x;
    u_xlat2 = min(abs(x_139), 1.0f);
    let x_144 : f32 = u_xlat1.x;
    u_xlat6 = max(abs(x_144), 1.0f);
    let x_147 : f32 = u_xlat6;
    u_xlat6 = (1.0f / x_147);
    let x_149 : f32 = u_xlat6;
    let x_150 : f32 = u_xlat2;
    u_xlat2 = (x_149 * x_150);
    let x_152 : f32 = u_xlat2;
    let x_153 : f32 = u_xlat2;
    u_xlat6 = (x_152 * x_153);
    let x_156 : f32 = u_xlat6;
    u_xlat10 = ((x_156 * 0.0208351f) + -0.085133001f);
    let x_161 : f32 = u_xlat6;
    let x_162 : f32 = u_xlat10;
    u_xlat10 = ((x_161 * x_162) + 0.180141002f);
    let x_166 : f32 = u_xlat6;
    let x_167 : f32 = u_xlat10;
    u_xlat10 = ((x_166 * x_167) + -0.330299497f);
    let x_171 : f32 = u_xlat6;
    let x_172 : f32 = u_xlat10;
    u_xlat6 = ((x_171 * x_172) + 0.999866009f);
    let x_176 : f32 = u_xlat6;
    let x_177 : f32 = u_xlat2;
    u_xlat10 = (x_176 * x_177);
    let x_181 : f32 = u_xlat1.x;
    u_xlatb14 = (1.0f < abs(x_181));
    let x_184 : f32 = u_xlat10;
    u_xlat10 = ((x_184 * -2.0f) + 1.570796371f);
    let x_189 : bool = u_xlatb14;
    let x_190 : f32 = u_xlat10;
    u_xlat10 = select(0.0f, x_190, x_189);
    let x_192 : f32 = u_xlat2;
    let x_193 : f32 = u_xlat6;
    let x_195 : f32 = u_xlat10;
    u_xlat2 = ((x_192 * x_193) + x_195);
    let x_198 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_198, 1.0f);
    let x_203 : f32 = u_xlat1.x;
    let x_205 : f32 = u_xlat1.x;
    u_xlatb1 = (x_203 < -(x_205));
    let x_208 : bool = u_xlatb1;
    if (x_208) {
      let x_212 : f32 = u_xlat2;
      x_209 = -(x_212);
    } else {
      let x_215 : f32 = u_xlat2;
      x_209 = x_215;
    }
    let x_216 : f32 = x_209;
    u_xlat1.x = x_216;
    let x_218 : f32 = u_xlat13;
    let x_220 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_218 * x_220) + -1.0f);
    let x_224 : vec4<f32> = u_xlat0;
    let x_226 : vec4<f32> = u_xlat1;
    let x_229 : vec2<f32> = u_xlat8;
    u_xlat5 = ((vec2<f32>(x_224.x, x_224.y) * vec2<f32>(x_226.x, x_226.x)) + x_229);
  }
  let x_242 : vec2<f32> = vs_TEXCOORD0;
  let x_243 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_242);
  u_xlat0.x = x_243.x;
  let x_251 : vec2<f32> = u_xlat5;
  let x_252 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_251);
  u_xlat1 = x_252;
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : vec3<f32> = (vec3<f32>(x_254.x, x_254.x, x_254.x) * vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_259 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat1;
  let x_265 : f32 = x_25.x_PostExposure;
  let x_267 : f32 = x_25.x_PostExposure;
  let x_269 : f32 = x_25.x_PostExposure;
  let x_271 : f32 = x_25.x_PostExposure;
  let x_272 : vec4<f32> = vec4<f32>(x_265, x_267, x_269, x_271);
  u_xlat0 = (vec4<f32>(x_261.w, x_261.x, x_261.y, x_261.z) * vec4<f32>(x_272.x, x_272.y, x_272.z, x_272.w));
  let x_279 : vec4<f32> = u_xlat0;
  let x_286 : vec3<f32> = ((vec3<f32>(x_279.y, x_279.z, x_279.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = log2(vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_292 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_294 : vec4<f32> = u_xlat1;
  let x_301 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat1;
  let x_308 : vec3<f32> = clamp(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat1;
  let x_316 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_318 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_316.y, x_316.y, x_316.y));
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : f32 = x_25.x_Lut3D_Params.x;
  u_xlat13 = (x_322 * 0.5f);
  let x_324 : vec4<f32> = u_xlat1;
  let x_327 : vec2<f32> = x_25.x_Lut3D_Params;
  let x_330 : f32 = u_xlat13;
  let x_332 : vec3<f32> = ((vec3<f32>(x_324.x, x_324.y, x_324.z) * vec3<f32>(x_327.x, x_327.x, x_327.x)) + vec3<f32>(x_330, x_330, x_330));
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec3<f32> = vec3<f32>(x_345.x, x_345.y, x_345.z);
  let x_347 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_347.x, x_346.x, x_346.y, x_346.z);
  let x_351 : f32 = x_25.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_351);
  let x_353 : bool = u_xlatb1;
  if (x_353) {
    let x_356 : vec4<f32> = u_xlat0;
    let x_357 : vec3<f32> = vec3<f32>(x_356.y, x_356.z, x_356.w);
    let x_358 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
    let x_360 : vec4<f32> = u_xlat1;
    let x_364 : vec3<f32> = clamp(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_365 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_377 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_377.y, x_377.z, x_377.w, x_377.x);
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

