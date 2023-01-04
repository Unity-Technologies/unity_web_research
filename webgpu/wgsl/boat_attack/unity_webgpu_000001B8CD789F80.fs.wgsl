type Arr = array<vec4<f32>, 42u>;

struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_BokehKernel : Arr,
  x_BokehConstants : vec4<f32>,
}

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat8 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat7 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat14 : f32;
  var u_xlatb27 : bool;
  var u_xlat27 : f32;
  var u_xlatb0 : bool;
  var u_xlatb21 : bool;
  var u_xlat21 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_29.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_35);
  u_xlat0 = x_36;
  let x_41 : f32 = u_xlat0.w;
  u_xlat1.x = max(x_41, 0.0f);
  let x_46 : f32 = u_xlat1.x;
  let x_50 : f32 = x_29.x_BokehConstants.y;
  u_xlat1.x = (x_46 + x_50);
  let x_54 : f32 = u_xlat0.w;
  let x_57 : f32 = x_29.x_BokehConstants.y;
  u_xlat1.y = (-(x_54) + x_57);
  let x_60 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = x_29.x_BokehConstants;
  let x_66 : vec2<f32> = (vec2<f32>(x_60.x, x_60.y) / vec2<f32>(x_64.y, x_64.y));
  let x_67 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_66.x, x_66.y, x_67.z, x_67.w);
  let x_69 : vec4<f32> = u_xlat1;
  let x_74 : vec2<f32> = clamp(vec2<f32>(x_69.x, x_69.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_74.x, x_74.y, x_75.z, x_75.w);
  let x_81 : f32 = u_xlat0.w;
  let x_84 : f32 = x_29.x_BokehConstants.x;
  u_xlatb15 = (-(x_81) >= x_84);
  let x_87 : bool = u_xlatb15;
  u_xlat15 = select(0.0f, 1.0f, x_87);
  let x_90 : f32 = u_xlat15;
  let x_92 : f32 = u_xlat1.y;
  u_xlat8 = (x_90 * x_92);
  let x_96 : vec4<f32> = u_xlat0;
  let x_97 : vec3<f32> = vec3<f32>(x_96.x, x_96.y, x_96.z);
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  u_xlat2.w = 1.0f;
  let x_102 : vec4<f32> = u_xlat1;
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec4<f32>(x_102.x, x_102.x, x_102.x, x_102.x) * x_104);
  let x_106 : f32 = u_xlat8;
  let x_108 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec4<f32>(x_106, x_106, x_106, x_106) * x_108);
  u_xlat2.w = 1.0f;
  let x_112 : vec4<f32> = u_xlat3;
  u_xlat4 = x_112;
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat5 = x_114;
  u_xlati_loop_1 = 0i;
  loop {
    let x_122 : i32 = u_xlati_loop_1;
    if ((x_122 < 42i)) {
    } else {
      break;
    }
    let x_127 : vec2<f32> = vs_TEXCOORD0;
    let x_129 : i32 = u_xlati_loop_1;
    let x_131 : vec4<f32> = x_29.x_BokehKernel[x_129];
    u_xlat7 = (x_127 + vec2<f32>(x_131.w, x_131.y));
    let x_138 : vec2<f32> = u_xlat7;
    let x_140 : f32 = x_29.x_GlobalMipBias.x;
    let x_141 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_138, x_140);
    u_xlat6 = x_141;
    let x_143 : f32 = u_xlat0.w;
    let x_145 : f32 = u_xlat6.w;
    u_xlat7.x = min(x_143, x_145);
    let x_149 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_149, 0.0f);
    let x_153 : f32 = u_xlat7.x;
    let x_154 : i32 = u_xlati_loop_1;
    let x_157 : f32 = x_29.x_BokehKernel[x_154].z;
    u_xlat7.x = (x_153 + -(x_157));
    let x_162 : f32 = u_xlat7.x;
    let x_164 : f32 = x_29.x_BokehConstants.y;
    u_xlat7.x = (x_162 + x_164);
    let x_169 : f32 = u_xlat6.w;
    let x_171 : i32 = u_xlati_loop_1;
    let x_173 : f32 = x_29.x_BokehKernel[x_171].z;
    u_xlat14 = (-(x_169) + -(x_173));
    let x_176 : f32 = u_xlat14;
    let x_178 : f32 = x_29.x_BokehConstants.y;
    u_xlat7.y = (x_176 + x_178);
    let x_181 : vec2<f32> = u_xlat7;
    let x_183 : vec4<f32> = x_29.x_BokehConstants;
    u_xlat7 = (x_181 / vec2<f32>(x_183.y, x_183.y));
    let x_186 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_186, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_192 : f32 = u_xlat6.w;
    let x_195 : f32 = x_29.x_BokehConstants.x;
    u_xlatb27 = (-(x_192) >= x_195);
    let x_198 : bool = u_xlatb27;
    u_xlat27 = select(0.0f, 1.0f, x_198);
    let x_201 : f32 = u_xlat7.y;
    let x_202 : f32 = u_xlat27;
    u_xlat14 = (x_201 * x_202);
    let x_204 : vec4<f32> = u_xlat6;
    let x_205 : vec3<f32> = vec3<f32>(x_204.x, x_204.y, x_204.z);
    let x_206 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat2;
    let x_209 : vec2<f32> = u_xlat7;
    let x_212 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_208 * vec4<f32>(x_209.x, x_209.x, x_209.x, x_209.x)) + x_212);
    let x_214 : vec4<f32> = u_xlat2;
    let x_215 : f32 = u_xlat14;
    let x_218 : vec4<f32> = u_xlat5;
    u_xlat5 = ((x_214 * vec4<f32>(x_215, x_215, x_215, x_215)) + x_218);

    continuing {
      let x_220 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_220 + 1i);
    }
  }
  let x_224 : f32 = u_xlat4.w;
  u_xlatb0 = (x_224 == 0.0f);
  let x_226 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_226);
  let x_230 : f32 = u_xlat0.x;
  let x_232 : f32 = u_xlat4.w;
  u_xlat0.x = (x_230 + x_232);
  let x_235 : vec4<f32> = u_xlat4;
  let x_237 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) / vec3<f32>(x_237.x, x_237.x, x_237.x));
  let x_240 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_244 : f32 = u_xlat5.w;
  u_xlatb21 = (x_244 == 0.0f);
  let x_247 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_247);
  let x_249 : f32 = u_xlat21;
  let x_251 : f32 = u_xlat5.w;
  u_xlat21 = (x_249 + x_251);
  let x_253 : vec4<f32> = u_xlat5;
  let x_255 : f32 = u_xlat21;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) / vec3<f32>(x_255, x_255, x_255));
  let x_258 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_261 : f32 = u_xlat5.w;
  u_xlat21 = (x_261 * 0.073060296f);
  let x_264 : f32 = u_xlat21;
  u_xlat21 = min(x_264, 1.0f);
  let x_266 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec3<f32> = (-(vec3<f32>(x_266.x, x_266.y, x_266.z)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_276 : f32 = u_xlat21;
  let x_278 : vec4<f32> = u_xlat1;
  let x_281 : vec4<f32> = u_xlat0;
  let x_283 : vec3<f32> = ((vec3<f32>(x_276, x_276, x_276) * vec3<f32>(x_278.x, x_278.y, x_278.z)) + vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : f32 = u_xlat21;
  SV_Target0.w = x_286;
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

