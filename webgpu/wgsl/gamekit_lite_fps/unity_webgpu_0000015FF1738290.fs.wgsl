struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_MaxCoC : f32,
  x_RcpAspect : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat6 : f32;

@group(0) @binding(0) var<uniform> x_35 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat5 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlatb0 : bool;

var<private> u_xlatb18 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati12 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var indexable : array<vec4<u32>, 16u>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0.x = x_25.w;
  let x_41 : f32 = x_35.x_MainTex_TexelSize.y;
  let x_43 : f32 = x_35.x_MainTex_TexelSize.y;
  u_xlat6 = (x_41 + x_43);
  u_xlat1.w = 1.0f;
  u_xlat2.x = 0.0f;
  u_xlat2.y = 0.0f;
  u_xlat2.z = 0.0f;
  u_xlat2.w = 0.0f;
  u_xlat3.x = 0.0f;
  u_xlat3.y = 0.0f;
  u_xlat3.z = 0.0f;
  u_xlat3.w = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_69 : i32 = u_xlati_loop_1;
    if ((x_69 < 16i)) {
    } else {
      break;
    }
    let x_76 : f32 = x_35.x_MaxCoC;
    let x_78 : f32 = x_35.x_MaxCoC;
    let x_79 : vec2<f32> = vec2<f32>(x_76, x_78);
    let x_130 : i32 = u_xlati_loop_1;
    indexable = array<vec4<u32>, 16u>(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1057727209u, 0u, 0u, 0u), vec4<u32>(1043110300u, 1057279317u, 0u, 0u), vec4<u32>(3202478008u, 1050945282u, 0u, 0u), vec4<u32>(3202478006u, 3198428933u, 0u, 0u), vec4<u32>(1043110305u, 3204762965u, 0u, 0u), vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(1062149053u, 1058437400u, 0u, 0u), vec4<u32>(1050556281u, 1064532081u, 0u, 0u), vec4<u32>(3198039931u, 1064532080u, 0u, 0u), vec4<u32>(3209632702u, 1058437399u, 0u, 0u), vec4<u32>(3212836864u, 0u, 0u, 0u), vec4<u32>(3209632700u, 3205921050u, 0u, 0u), vec4<u32>(3198039918u, 3212015730u, 0u, 0u), vec4<u32>(1050556286u, 3212015728u, 0u, 0u), vec4<u32>(1062149052u, 3205921049u, 0u, 0u));
    let x_136 : vec4<u32> = indexable[x_130];
    let x_139 : vec2<f32> = (vec2<f32>(x_79.x, x_79.y) * bitcast<vec2<f32>>(vec2<u32>(x_136.x, x_136.y)));
    let x_140 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_140.x, x_139.x, x_139.y, x_140.w);
    let x_143 : vec4<f32> = u_xlat4;
    let x_145 : vec4<f32> = u_xlat4;
    u_xlat18 = dot(vec2<f32>(x_143.y, x_143.z), vec2<f32>(x_145.y, x_145.z));
    let x_148 : f32 = u_xlat18;
    u_xlat18 = sqrt(x_148);
    let x_151 : f32 = u_xlat4.y;
    let x_154 : f32 = x_35.x_RcpAspect;
    u_xlat4.x = (x_151 * x_154);
    let x_157 : vec4<f32> = u_xlat4;
    let x_160 : vec2<f32> = vs_TEXCOORD0;
    let x_161 : vec2<f32> = (vec2<f32>(x_157.x, x_157.z) + x_160);
    let x_162 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_161.x, x_161.y, x_162.z, x_162.w);
    let x_164 : vec4<f32> = u_xlat4;
    let x_168 : vec2<f32> = clamp(vec2<f32>(x_164.x, x_164.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_169 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_169.z, x_169.w);
    let x_171 : vec4<f32> = u_xlat4;
    let x_174 : f32 = x_35.x_RenderViewportScaleFactor;
    let x_176 : vec2<f32> = (vec2<f32>(x_171.x, x_171.y) * vec2<f32>(x_174, x_174));
    let x_177 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
    let x_182 : vec4<f32> = u_xlat4;
    let x_184 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_182.x, x_182.y));
    u_xlat4 = x_184;
    let x_187 : f32 = u_xlat0.x;
    let x_189 : f32 = u_xlat4.w;
    u_xlat5 = min(x_187, x_189);
    let x_191 : f32 = u_xlat5;
    u_xlat5 = max(x_191, 0.0f);
    let x_193 : f32 = u_xlat18;
    let x_195 : f32 = u_xlat5;
    u_xlat5 = (-(x_193) + x_195);
    let x_198 : f32 = x_35.x_MainTex_TexelSize.y;
    let x_201 : f32 = u_xlat5;
    u_xlat5 = ((x_198 * 2.0f) + x_201);
    let x_203 : f32 = u_xlat5;
    let x_204 : f32 = u_xlat6;
    u_xlat5 = (x_203 / x_204);
    let x_206 : f32 = u_xlat5;
    u_xlat5 = clamp(x_206, 0.0f, 1.0f);
    let x_208 : f32 = u_xlat18;
    let x_211 : f32 = u_xlat4.w;
    u_xlat18 = (-(x_208) + -(x_211));
    let x_215 : f32 = x_35.x_MainTex_TexelSize.y;
    let x_217 : f32 = u_xlat18;
    u_xlat18 = ((x_215 * 2.0f) + x_217);
    let x_219 : f32 = u_xlat18;
    let x_220 : f32 = u_xlat6;
    u_xlat18 = (x_219 / x_220);
    let x_222 : f32 = u_xlat18;
    u_xlat18 = clamp(x_222, 0.0f, 1.0f);
    let x_227 : f32 = u_xlat4.w;
    let x_230 : f32 = x_35.x_MainTex_TexelSize.y;
    u_xlatb22 = (-(x_227) >= x_230);
    let x_233 : bool = u_xlatb22;
    u_xlat22 = select(0.0f, 1.0f, x_233);
    let x_235 : f32 = u_xlat18;
    let x_236 : f32 = u_xlat22;
    u_xlat18 = (x_235 * x_236);
    let x_238 : vec4<f32> = u_xlat4;
    let x_239 : vec3<f32> = vec3<f32>(x_238.x, x_238.y, x_238.z);
    let x_240 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_242 : vec4<f32> = u_xlat1;
    let x_243 : f32 = u_xlat5;
    let x_246 : vec4<f32> = u_xlat2;
    u_xlat2 = ((x_242 * vec4<f32>(x_243, x_243, x_243, x_243)) + x_246);
    let x_248 : vec4<f32> = u_xlat1;
    let x_249 : f32 = u_xlat18;
    let x_252 : vec4<f32> = u_xlat3;
    u_xlat3 = ((x_248 * vec4<f32>(x_249, x_249, x_249, x_249)) + x_252);

    continuing {
      let x_254 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_254 + 1i);
    }
  }
  let x_258 : f32 = u_xlat2.w;
  u_xlatb0 = (x_258 == 0.0f);
  let x_260 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_260);
  let x_264 : f32 = u_xlat0.x;
  let x_266 : f32 = u_xlat2.w;
  u_xlat0.x = (x_264 + x_266);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_269.x, x_269.y, x_269.z) / vec3<f32>(x_271.x, x_271.x, x_271.x));
  let x_276 : f32 = u_xlat3.w;
  u_xlatb18 = (x_276 == 0.0f);
  let x_278 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_278);
  let x_280 : f32 = u_xlat18;
  let x_282 : f32 = u_xlat3.w;
  u_xlat18 = (x_280 + x_282);
  let x_284 : vec4<f32> = u_xlat3;
  let x_286 : f32 = u_xlat18;
  let x_288 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) / vec3<f32>(x_286, x_286, x_286));
  let x_289 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : f32 = u_xlat3.w;
  u_xlat18 = (x_292 * 0.196349546f);
  let x_295 : f32 = u_xlat18;
  u_xlat18 = min(x_295, 1.0f);
  let x_297 : vec3<f32> = u_xlat0;
  let x_299 : vec4<f32> = u_xlat1;
  let x_301 : vec3<f32> = (-(x_297) + vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_306 : f32 = u_xlat18;
  let x_308 : vec4<f32> = u_xlat1;
  let x_311 : vec3<f32> = u_xlat0;
  let x_312 : vec3<f32> = ((vec3<f32>(x_306, x_306, x_306) * vec3<f32>(x_308.x, x_308.y, x_308.z)) + x_311);
  let x_313 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : f32 = u_xlat18;
  SV_Target0.w = x_315;
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

